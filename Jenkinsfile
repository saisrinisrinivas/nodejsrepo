pipeline {
  agent any

  stages {

     stage('loginintoECR') {
      steps {
        
        sh 'sudo aws -S ecr-public get-login-password --region us-east-1'
        sh 'sudo docker login --username AWS --password-stdin public.ecr.aws/s9e0w9o5'

      }
    }
    stage('Build') {
      steps {
        git branch: 'main', url: 'https://github.com/saisrinisrinivas/nodejsrepo.git'
        sh 'docker build -t nodejs .'
      }
    }
   
    stage('PushintoECR') {
      steps {
        sh 'sudo docker tag demojenkins:latest public.ecr.aws/s9e0w9o5/demojenkins:latest'
        sh 'sudo docker push public.ecr.aws/s9e0w9o5/demojenkins:latest'

      }
    }
  }
}
    

    
    
  
