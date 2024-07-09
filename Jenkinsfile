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
                sh "docker build -t ${DOCKER_IMAGE}:${BUILD_NUMBER} ."
            }
        }
        stage('Test') {
            steps {
                sh "docker run --name ${CONTAINER_NAME} ${DOCKER_IMAGE} npm install && npm test"
            }
        }
        stage('Release') {
            steps {
                sh 'echo push image to registry...'
            }
        }
        stage('Deployment') {
            steps {
                sh 'preparing deployment...'
            }
        }
    }
    post {
        always {
            sh "docker rm -f ${CONTAINER_NAME}"
            sh "docker rmi ${DOCKER_IMAGE}"
        }
    }
}
