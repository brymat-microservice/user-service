pipeline {
    agent {
        label 'ubuntu-node'
    }

    stages {
        stage('Build') {
            steps {
                sh 'echo building user-service image...'
                script {
                    sh 'echo Building user-service image...'
                    def image = docker.build('.')
                    image.inside {
                        sh 'npm install'
                        sh 'npm test'
                    }
                }
            }
        }
        stage('Release') {
            steps {
                sh 'echo push image to registry...'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo deploy user-service...'
            }
        }
    }
}
