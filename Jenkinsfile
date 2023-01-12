pipeline {
    agent any
    stages {
        stage('Hello') {
            agent { label "devnode" }
            steps {
                sh '''
                echo Hello from DevNode server
                '''
            }
         }
        stage('Check Docker') {
            agent { label "devnode" }
            steps {
                sh '''
                docker --version
                '''
            }
         }
    }
}
