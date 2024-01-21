pipeline {
  agent any
  stages {
    stage ('Stage 1') {
      steps {
        catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
          // Run commands in Stage 1 that might generate errors
          sh 'some_command_that_may_fail'
          sh 'another_command_that_may_fail'
               }
      }
    }
    stage('Stage 2') {
      steps {
        //Your commands for stage 2
        echo 'Executing Stage2...'
        //Ass your commands here
      }
    } 
      }
  post {
    failure {
      //Actions to perform if the pipeline fails
      echo 'Pipeline execution failed.'
      //Additional actions like sending notifications, cleanup, etc.
    }
    Success {
      //Actions to perform if the pipeline succeeds
      echo 'Pipeline executed successfully.'
    }
  }
}
