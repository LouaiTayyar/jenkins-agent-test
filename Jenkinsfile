pipeline {
    agent any
    stages {
        stage('Hello') {
            agent { label "DevNode" }
            steps {
                sh '''
                echo Hello from DevNode server
                docker --version
                docker-compose up 
                '''
            }
         }
    }
}
