pipeline {
    agent none
    stages {
        stage('stage name') {
            agent { label "agent1" }
            steps {
                script {
                    println "This is done on agent one"
	            docker run --name keycloak -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin -p 8080:8080  quay.io/keycloak/keycloak:20.0.1 start-dev
                }
            }
         }
    }
}
