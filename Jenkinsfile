pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        git branch: 'main', url: 'https://github.com/saisrinisrinivas/nodejsrepo.git'
        sh 'docker build -t nodejs .'
      }
    }
    stage('loginintoECR') {
      steps {
        
        sh 'sudo aws ecr-public get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin public.ecr.aws/s9e0w9o5'

      }
    }
    stage('PushintoECR') {
      steps {
        sh 'docker tag demojenkins:latest public.ecr.aws/s9e0w9o5/demojenkins:latest'
        sh 'docker push public.ecr.aws/s9e0w9o5/demojenkins:latest'

      }
    }
  }
}
    

    
    
  
