pipeline {
    agent any
    stages {
        stage('Hello') {
            agent { label "DevNode" }
            steps {
                sh '''
                echo Hello from DevNode server ( the remote jenkins agent )
                docker --version
                '''
            }
         }
    }
}
