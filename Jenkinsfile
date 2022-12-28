pipeline {
    agent any
    stages {
        stage('Hello') {
            agent { label "DevNode" }
            steps {
                sh '''
                echo Hello from agent1 
                '''
            }
         }
    }
}
