pipeline {
    agent any
    stages {
        stage('Hello') {
            agent { label "agent1" }
            steps {
                sh '''
                echo Hello from agent1 
                '''
            }
         }
    }
}
