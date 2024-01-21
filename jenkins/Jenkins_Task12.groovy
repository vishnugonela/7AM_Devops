pipeline {
  agent none
  stages {
    stage('Node-1 Execution') {
      agent {
        label 'Node-1'
          }
      steps {
        echo 'Running on Node-1'
        //Add commands specific to Node-1
      }
    }
    stage('Node-2 Execution') {
      agent {
        label 'Node-2'
          }
      steps {
        echo 'Running on Node2'
        //Add commands specific to Node-2
      }
    }
    stage('Node-3 Execution') {
      agent {
        label 'Node-3'
          }
      steps {
        echo 'Running on Node-3'
        //Add commands specific to Node-3
      }
    }
  }
  post {
    always {
      echo 'Pipeline completed.'
    }
  }
}
