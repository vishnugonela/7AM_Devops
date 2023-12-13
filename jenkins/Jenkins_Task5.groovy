pipeline {
  agent any
  options {
    disableConcurrentBuilds()
      }
  stages {
    stage ('Stage1') {
      environment {
        DEBUG_FLAG='true'     
            }
      steps {
        script {
          if (env.DEBUG_FLAG == 'true') {
            echo 'Debug option enabled for Stage1'
            //Add debug-Specific actions for this stage
          }
          //Your regular stage actions here
        }
      }
    }
    stage ('Stage2') {
      environment {
        DEBUG_FLAG='true'     
            }
      steps {
        script {
          if (env.DEBUG_FLAG == 'true') {
            echo 'Debug option enabled for Stage2'
            //Add debug-Specific actions for this stage
          }
          //Your regular stage actions here
          }
        }
      }
    }
  }
}
