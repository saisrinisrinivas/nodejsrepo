pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        git branch: 'main', url: 'https://github.com/srikanth458hk/nodejsrepo.git'

        sh 'docker build -t node-app .'
      }
    }
    steps {
        // Login to AWS ECR
        script {
          def ecrLogin = sh(
            returnStdout: true,
            script: 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 125523629880.dkr.ecr.ap-south-1.amazonaws.com'
          )
          echo ecrLogin
        }

        // Push the Docker image to AWS ECR
        sh "docker tag node-app:latest 125523629880.dkr.ecr.ap-south-1.amazonaws.com/nodejs:latest"
        sh "docker push 125523629880.dkr.ecr.ap-south-1.amazonaws.com/nodejs:latest"
  }
}