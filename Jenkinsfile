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
         docker.build -t mywebsite
}}
}
}
}
