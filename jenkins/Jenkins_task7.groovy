
pipeline {
    agent any

    stages {
        stage('Stage 1') {
            steps {
                script {
                    try {
                        // Add your Stage 1 steps here
                        sh 'echo "Executing Stage 1"'
                        // Simulate an error (replace this with your actual Stage 1 steps)
                        sh 'echo "Error in Stage 1" && exit 1'
                    } catch (Exception e) {
                        echo "Caught an error in Stage 1: ${e.message}"
                    }
                }
            }
        }

        stage('Stage 2') {
            steps {
                echo 'Executing Stage 2'
                // Add your Stage 2 steps here
            }
        }
    }
}
