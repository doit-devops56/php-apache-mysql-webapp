pipeline {
    agent any
    
    environment {
        MYAPP_VER = "1.0.0"
    }

    parameters {
        booleanParam(name: "build_php", defaultValue: false)
    }

    stages {
        stage('Build docker images') {
            steps {
                script {
                    echo '#### Starting docker build....'
                    // Add steps for building Docker images
                }
            }
        }

        stage('Push docker images') {
            environment {
                DOCKERHUB_URL = "docker/test"
            }
            steps {
                script {
                    echo 'Pushing docker images to docker hub...'
                    // Add steps for pushing Docker images
                }
            }
        }

        stage('Deploy app') {
            steps {
                sh '''
                echo "Deploying app..."
                '''
                // Add steps for deploying the app
            }
        }
    }
    
    post {
        always {
            sh '''
            echo "Sending email notification..."
            '''
        }
    }
}
