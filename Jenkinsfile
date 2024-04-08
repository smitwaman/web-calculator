pipeline {
    agent any

   tools {
        // Define the Maven tool with the name 'maven'
        maven 'maven'
        nodejs 'nodejs'
        git 'git'
   }
    

    stages {
        stage('Checkout') {
            steps {
                checkout scm
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

     stage('Node.js Build') {
            steps {
                script {

                        // Build Node.js project (e.g., run tests, transpile code, etc.)
                        sh 'npm run build' // Adjust the command as needed
                    
                }
            }
        }


      

    }
    }

