pipeline {
    agent any

    stages {
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
    }
}