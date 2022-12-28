pipeline {
    agent { label "agent1" }
    stages {
        stage('stage name') {
            agent { docker { image "quay.io/keycloak/keycloak:20.0.1" } }
            steps {
                sh '''
                echo Hello from pipeline 
                '''
            }
        }
    }
}
