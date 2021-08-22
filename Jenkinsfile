pipeline {
    agent any
    tools {
        maven 'MAVEN_PATH'
        jdk 'jdk8'
    }
    stages {
        stage("Tools initialization") {
            steps {
                sh "mvn --version"
                sh "java -version"
            }
        }
        stage("Checkout Code") {
            steps {
                url: "https://github.com/iamvickyav/spring-boot-h2-war-tomcat.git"
            }
        }
        stage("Building Application") {
            steps {
               sh "mvn clean package"
            }
        }
        stage('Master Branch Deploy Code') {
            when {
                branch 'master'
            }
            steps {
                sh """
                echo "Master Building Artifact"
                """

                sh """
                echo "Master Deploying Code"
                """
            }
        }
        stage('Develop Branch Deploy Code') {
             when {
                branch 'develop'
            }
            steps {
                sh """
                echo "Develop Building Artifact"
                """

                sh """
                echo "Develop Deploying Code"
                """
            }
       }
    }
}
