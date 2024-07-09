pipeline {
    agent {
        label 'ubuntu-node'
    }

    environment {
        DOCKER_IMAGE = 'user-service-image'
        CONTAINER_NAME = 'user-service-container'
    }

    stages {
        stage('Build') {
            steps {
                sh 'echo building...'
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'echo testing...'
                sh 'npm test'
            }
        }
        stage('Release') {
            steps {
                sh 'echo release...'
                sh 'echo push image to registry...'
            }
        }
    }
}
