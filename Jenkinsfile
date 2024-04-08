pipeline {
    agent any

   tools {
        // Define the Maven tool with the name 'maven'
        maven 'maven'
    }
    

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

    }

    stage('Maven Compile') {
            steps {
                script {
                    // Compile the Maven project
                    sh 'mvn compile'
                }
            }
        }

        stage('Maven Package') {
            steps {
                script {
                    // Build the Maven project and package the artifact
                    sh 'mvn package'
                }
            }
            post {
                success {
                    // Archive the artifact (e.g., JAR, WAR) for later use or deployment
                    archiveArtifacts artifacts: 'target/*.jar' // Adjust the pattern as needed
                }
            }
        }  

      


    }

