pipeline {
    agent {
        label 'ubuntu-node'
    }

    stages {
        stage('Checkout') {
            steps {
                sh 'ls -al'
            }
        }
        stage('Build') {
            steps {
                sh 'echo building user-service image...'
            }
        }
        stage('Test') {
            steps {
                sh 'echo building user-service image...'
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
