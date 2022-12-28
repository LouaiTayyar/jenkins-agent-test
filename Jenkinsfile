pipeline {
    agent any
    stages {
        stage('stage name') {
            agent { label "agent1" }
            steps {
                sh '''
                echo Hello from pipeline 
                docker version
                '''
            }
         }
    }
}
