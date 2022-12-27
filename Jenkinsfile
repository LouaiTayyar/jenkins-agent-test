pipeline {
    agent none
    stages {
        stage('Final') {
            agent { label "agent1" }
            steps {
                script {
                    println "This is done on agent one"
                }
            }
         }
    }
}
