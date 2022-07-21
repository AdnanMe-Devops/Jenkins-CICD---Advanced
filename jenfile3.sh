pipeline {
    agent none
    stages {
        stage('Maven') {
            agent {
                docker {
                    image 'maven:3.6.0-jdk-12-alpine'
                    label 'agent1'
                }
            }
            steps {
                echo 'Hello, Maven'
                sh 'mvn --version'
            }
        }
        stage('JDK') {
            agent {
                docker {
                    image 'openjdk:11.0.1-jdk'
                    label 'agent1'
                }
            }
            steps {
                echo 'Hello, JDK'
                sh 'java -version'
            }
        }
    }
}
  }

