pipeline {
    agent any

    stages {
        stage('Code Pull') {
            steps {
                echo 'Pulling code from GitHub...'
                checkout scm
            }
        }

        stage('Image Build') {
            steps {
                echo 'Building Docker Image...'
                // This command will run once we have your Dockerfile ready
                // sh 'docker build -t devops-app .'
            }
        }

        stage('Push Image') {
            steps {
                echo 'Pushing Image to Registry...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to Kubernetes...'
                // This will use your YAML files later
            }
        }
    }
}
