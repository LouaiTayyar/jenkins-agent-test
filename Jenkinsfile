pipeline {
    agent none
    stages {
        stage('stage name') {
            agent { label "agent1" }
            steps {
                script {
                    println "This is done on agent one"
                    docker version
                }
            }
         }
    }
}
