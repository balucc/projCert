pipeline{
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
         docker.build ("mywebsite:${env.BUILD_ID}")
}}
}
stage('DockerRun'){
  steps{
   sh "docker run -itd -p 8081:80 -name mywebsite"
}}
}
}

