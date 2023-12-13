pipeline {
  agent none
  stages {
    stage('Node-1 Execution') {
      agent {
        node('Node-1') {
          label 'Node-1'
        }
      }
      steps {
        script {
          try {
            // Run commands on Node-1
            sh 'echo "Running on Node-1"'
            // Simulate failure on Node-1
            error 'Simulating failure on Node-1'
              }  catch (Exceptione) {
            echo "Node-1 failed: ${e.getMessage()}"
            currentBuild.result = 'FAILURE'
              }
        }
      }
    }
   stage('Node-2 Execution') {
      agent {
        node('Node-2') {
          label 'Node-2'
        }
      }
     when {
       beforeAgent true
       expression { currentBuild.result == 'FAILURE' }
     }
      steps {
        script {
            // Run commands on Node-2 if Node-1 fails
            sh 'echo "Running on Node-2"'
              }
          }
       }
        // Add more stages or actions as needed
  }
  post {
    always {
      echo 'Pipeline completed.'
    }
  }
}
