pipeline{
	agent any
stages{
 stage('Git checkout'){
    steps{
       git 'https://github.com/balucc/projCert.git'
	  }}
 stage('DockerBuild'){
    steps{
      script{
         docker.build . -t mywebsite
}}
 stage('DockerRun'){
  steps{
   sh label: '', script: 'docker run -itd -p 8081:80 mywebsite'
}}
}}
}

