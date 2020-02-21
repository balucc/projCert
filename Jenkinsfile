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
stage('DockerRun'){
  steps{
      sh "docker run -itd -p 8081:80 $uname:$BUILD_NUMBER"
}
}
stage ("wait_for_container_build"){
  sh 'sleep 180'
}
stage('remove images from local') {
 steps {
  sh "docker rmi $uname:$BUILD_NUMBER"
 }  
}
}
}
