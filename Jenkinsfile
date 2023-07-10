pipeline {
  agent any

  stages {
    
    stage('Build') {
      steps {
        git branch: 'main', url: 'https://github.com/saisrinisrinivas/nodejsrepo.git'
        sh 'sudo docker build -t demojenkins .'
      }
    }
    stage('loginintoECR') {
      steps {
        
        sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/s9e0w9o5'

      }
    }


    stage('PushintoECR') {
      steps {
        sh 'docker tag demojenkins:latest public.ecr.aws/s9e0w9o5/demojenkins:latest'
        sh 'docker push public.ecr.aws/s9e0w9o5/demojenkins:latest'
      }
    }
     stage('DeployIntoEc2') {
      steps {
      sh 'docker pull public.ecr.aws/s9e0w9o5/demojenkins:latest'
      }
    }
    
  }
}

    

    
    
  
