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
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }
        stage('Test') {
            steps {
                sh "docker run --name ${CONTAINER_NAME} ${DOCKER_IMAGE} npm install && npm test"
            }
        }
        stage('Release') {
            steps {
                sh 'echo release...'
                sh 'echo push image to registry...'
            }
        }
    }
    post {
        always {
            sh "docker rm -f ${CONTAINER_NAME}"
            sh "docker rm image ${DOCKER_IMAGE}"
        }
    }
}
