pipeline {
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('raghavendrasak78-dockerhub')
     DOCKERHUB_REPO = 'raghavendrasak78/container_details'
        IMAGE_TAG = 'latest'
    }

      stages {
        stage('Stage 1: Create Image with Container Details') {
            steps {
                script {
                    // Create a Dockerfile for the image
                    writeFile file: 'Dockerfile', text: """
                    FROM nginx:alpine
                    RUN apk add --no-cache curl
                    RUN echo '<html><body>' > /usr/share/nginx/html/index.html
                    RUN echo 'Container Name: \$(hostname)' >> /usr/share/nginx/html/index.html
                    RUN echo 'Container IP: \$(hostname -i)' >> /usr/share/nginx/html/index.html
                    RUN echo 'Date: \$(date)' >> /usr/share/nginx/html/index.html
                    RUN echo '</body></html>' >> /usr/share/nginx/html/index.html
                    EXPOSE 80
                    CMD ["nginx", "-g", "daemon off;"]
                    """
                    
                    // Build Docker image
                    sh 'docker build -t ${DOCKERHUB_REPO}:${IMAGE_TAG} .'
                }
            }
        }
        stage('Stage 2: Tag Image with Docker Hub Repo') {
            steps {
                script {
                    // Tag the image with Docker Hub repository
                    sh 'docker tag ${DOCKERHUB_REPO}:${IMAGE_TAG} ${DOCKERHUB_REPO}:${IMAGE_TAG}'
                }
            }
        }
        stage('Stage 3: Push Image to Docker Hub') {
            steps {
                script {
                    // Log in to Docker Hub
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                    
                    // Push the image to Docker Hub
                    sh 'docker push ${DOCKERHUB_REPO}:${IMAGE_TAG}'
                }
            }
        }
        stage('Stage 4: Pull Image on Slave Machine') {
            agent { 
              label 'slave' 
                 }
            steps {
                script {
                
                    sh 'docker --version'
                    
                    
                    sh 'docker pull ${DOCKERHUB_REPO}:${IMAGE_TAG}'
                }
            }
        }
        stage('Stage 5: Create and Validate Container on Slave Machine') {
            agent { 
              label 'slave' 
                  }
            steps {
                script {
                   
                    sh 'docker run -d --name test-container -p 8080:80 ${DOCKERHUB_REPO}:${IMAGE_TAG}'
                    
                    
                    sh 'sleep 10'  // Wait for the container to start
                    sh 'curl http://localhost:8080'
                }
            }
        }
    }
    post {
        always {
            script {
                // Cleanup: Stop and remove containers and images
                sh 'docker rm -f test-container || true'
                sh 'docker rmi ${DOCKERHUB_REPO}:${IMAGE_TAG} || true'
            }
        }
    }
}
