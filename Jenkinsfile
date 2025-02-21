pipeline {
    agent any
    
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }  
            }
            steps {
                sh '''
                    ls -la 
                    node --version
                    npm --version
		            npm config set strict-ssl false
                    npm instal
                    npm ci
                    npm run build
                    ls -la
                '''
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'node:18-alpine'
                    reuseNode true
                }  
            }

            steps {
                sh '''
                    test -f build/index.html
                    npm run test
                '''
            }
        }
    }
    
    post {
        always {
            junit 'test-results/junit.xml'
        }
    }  
    
}
