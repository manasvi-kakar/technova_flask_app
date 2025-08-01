pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/manasvi-kakar/technova_flask_app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t technova_app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 technova_app'
            }
        }
    }
}