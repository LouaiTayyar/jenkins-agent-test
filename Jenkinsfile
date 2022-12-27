pipeline {
    agent {
    agent1 
    stages {
    stage('Checkout SCM Files') {
        checkout scm
    }
    stage('Verify Available Tools') {
        sh '''
            docker version 
            docker info 
            docker compose version
            curl --version
        '''
    }
    stage('Prune Docker Data') {
        sh 'docker system prune -a --volumes -f'
    }
    stage('Build Database') {
        sh 'docker compose up -d db --no-color --wait'
    }
    stage('Deploy API') {
        sh '''
            docker compose up -d api --build --no-color --wait
            docker exec -i sensorsapi_api python3 manage.py collectstatic --noinput
            docker exec -i sensorsapi_api python3 manage.py makemigrations --noinput
            docker exec -i sensorsapi_api python3 manage.py migrate --noinput
        '''
    }
    stage('Run Unit Tests') {
        sh 'docker exec -i sensorsapi_api python3 manage.py test'
    }
  }
}
}
