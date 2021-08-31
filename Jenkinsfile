pipeline {
    agent any
    stages {
        stage('Build Code') {
            steps {
                sh """
                echo "Building Artifact from Develop Branch"
                """
            }
        }
       stage('Deploy Code') {
           steps {
                sh """
                echo "Deploying Code from Develop Branch"
                """
           }
       }
    }
}
