pipeline {
    agent {
        label 'ubuntu-node'
    }

    stages {
        stage('Build') {
            steps {
                sh 'echo building user-service image...'
            }
        }
        stage('Test') {
            steps {
                sh 'echo running unit test on user-service...'
            }
        }
        stage('Release') {
            steps {
                sh 'push image to registry...'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo deploy user-service...'
            }
        }
    }
}
