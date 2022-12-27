pipeline {
    agent any
    stages {
        stage('stage name') {
            agent { label "agent1" }
            steps {
                script {
                    println "This is done on agent one"
                }
            }
         }
        stage('Verify Available Tools') {
           agent { label "agent1" }
            steps {
             sh '''
               docker version 
               docker info 
               docker compose version
               curl --version
             '''
           }
        }
    }
}
