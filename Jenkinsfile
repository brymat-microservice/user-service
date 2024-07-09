pipeline {
    agent {
        label 'ubuntu-node'
    }

    environment {
        DOCKER_IMAGE = 'user-service-image'
        CONTAINER_NAME = 'user-service-container'
        DOCKER_USERNAME = 'bryamat24'
        REGISTRY_CREDENTIAL_ID = credentials('registry_credential_id')
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
                script {
                    docker.withRegistry("", "${REGISTRY_CREDENTIALS_ID}") {
                        def image = docker.image("${DOCKER_IMAGE}")
                        image.tag("${DOCKER_USERNAME}/${DOCKER_IMAGE}:${env.BUILD_NUMBER}")
                        image.push()
                    }
                }
            }
        }
        stage('Deployment') {
            steps {
                sh 'echo preparing deployment...'
            }
        }
    }
    post {
        always {
            sh "docker rm -f ${CONTAINER_NAME}"
            sh "docker rmi ${DOCKER_IMAGE}"
            sh "docker rmi ${REGISTRY_URL}/${DOCKER_IMAGE}:${env.BUILD_NUMBER}"
        }
    }
}
