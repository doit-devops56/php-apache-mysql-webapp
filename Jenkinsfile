pipeline {
    agent {
        any
    }
    
   
    environment {
        MYAPP_VER="1.0.0"
        
    }

    parameters {
        booleanParam(name: "build_php", defaultValue: false)
       
    }


    stages {
        // Non-parallel Stage
        stage('Build docker images') {
            
            steps {
                script {
                    //Extracting Jenkins branch to use in sonar.property
                    echo '#### Starting docker build....'
                    
                }
            }
        }

        stage('Push docker images') {
        
            environment {
                DOCKERHUB_URL = "docker/test"
            }

            steps {
                script {
                    //Extracting Jenkins branch to use in sonar.property
                    echo 'Pushing docker images to docker hub...'
                    
                    }
                }
            }
        
        
     stage('Deploy app'){
                                             
                            steps {
                                    sh'''
                                    echo "Deploying app..."
                                    '''
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

