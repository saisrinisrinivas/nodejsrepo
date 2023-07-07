pipeline {
  agent any

  stages {
    stage('loginintoECR') {
      steps {
        withCredentials([string(credentialsId: 'iamuser1')]) {
          script {
            def awsPassword = sh(
              script: 'aws ecr-public get-login-password --region us-east-1',
              returnStdout: true
            ).trim()
            sh "echo '$awsPassword' | docker login --username AWS --password-stdin public.ecr.aws/s9e0w9o5"
          }
        }
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
        sh 'docker tag demojenkins:latest public.ecr.aws/s9e0w9o5/demojenkins:latest'
        sh 'docker push public.ecr.aws/s9e0w9o5/demojenkins:latest'
      }
    }
  }
}

    

    
    
  
