pipeline {
    agent any

    stages {
        stage('Clean') {
            steps {
                echo 'Testing..'
                sh 'sbt clean' 
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'sbt test' 
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'sbt stage'
            }
        }
        stage('Dist') {
            steps {
                echo 'Distributing artifact....'
                sh 'sbt dist'
            }
        }
        stage('Setup') {
            steps {
                sh 'set -x && unzip -dy svc target/universal/*-1.0-SNAPSHOT.zip && mv svc/*/* svc/ && rm svc/bin/*.bat && mv svc/bin/* svc/bin/start'
            }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t scala-play-react .'
            }
        }
    }
}