pipeline{
	agent any
stages{
 stage('Git checkout'){
    steps{
       git 'https://github.com/balucc/Addressbook.git'
	  }}
 stage('DockerBuild'){
    steps{
       sh docker build . -t mywebsite
}
}
 stage('DockerRun'){
  steps{
   sh docker run -itd -p 8081:80 mywebsite
}}
}
}

