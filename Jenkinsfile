pipeline {
    agent any
    stages {
        stage('Hello') {
            agent { label "DevNode" }
            steps {
                sh '''
                echo Hello from DevNode server
                '''
            }
         }
        stage('Check Docker') {
            agent { label "DevNode" }
            steps {
                sh '''
                docker --version
                '''
            }
         }
    }
}
