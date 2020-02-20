pipeline{
 environment{
   uname = "balucc/webapp"
   passwd = "dockerhub"
   dockerImage = ''
}
 agent {
  label 'myslave'
}
  stages{
   stage('Git checkout'){
     steps{
        git 'https://github.com/balucc/projCert.git'
	  }}
 stage('DockerBuild'){
    steps{
      script{
        dockerImage = docker.build uname + ":$BUILD_NUMBER"
}}
}
stage('Docker image Push'){
  steps{
    script {
      docker.withRegistry('',passwd) {
         dockerImage.push()
    }
   }
  }
 }
stage('remove images from local') {
  sh "docker rmi $uname :$BUILD_NUMBER"
  }  
stage('DockerRun'){
  steps{
    docker.withRegistry('',passwd){
      sh "docker run -itd -p 8081:80 $uname :$BUILD_NUMBER"
}}
}
}
}
