pipeline {
    agent any
    
    stages {
        stage('Hello') {
            steps {
                sh '''
                    echo "With out docker"
                    ls -la
                    touch container-no.txt
                '''    
            }
        }
        stage('w/ docker') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }
            }
            steps {
                sh '''
                    echo "With docker"
                    ls -la
                    touch container-yes.txt
                '''
            }
        }
    }
}