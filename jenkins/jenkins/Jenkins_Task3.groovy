pipeline {
  agent none
  stages {
    stage ('Node-1 Stages'){
      agent {
        label 'Node-1'
              }
      steps {
        //your Node-1 stages here
        //Example:
        sh 'echo "Running on Node-1 : Stage1"'
        sh 'echo "Running on Node-1 : Stage2"'
        sh 'echo "Running on Node-1 : Stage3"'
        sh 'echo "Running on Node-1 : Stage4"'
        sh 'echo "Running on Node-1 : Stage5"'
      }
    }
    stage ('Node-2 Stages'){
      agent {
        label 'Node-2'
              }
      steps {
        //your Node-2 stages here
        //Example:
        sh 'echo "Running on Node-2 : Stage6"'
        sh 'echo "Running on Node-2 : Stage7"'
        sh 'echo "Running on Node-2 : Stage8"'
        sh 'echo "Running on Node-2 : Stage8"'
        sh 'echo "Running on Node-2 : Stage10"'
        }
      }
    }
}
}
