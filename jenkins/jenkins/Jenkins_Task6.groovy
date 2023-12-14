pipeline {
  agent any
  stages {
    stage ('Execute Command's'){
           steps {
             script {
               try {
                 //Run some commands that might generate an error
                 sh 'some_command_that_may_fail'
                 sh 'another_command_that_may_fail'
                 //If you want to explicitly cause an error, uncomment the line below
                 //error 'this step fails intentionally'
                  } catch (Exceptione){
                 //Handle the exception/error here
                 echo "An error occurred: ${e.getMessage()}"
                 //You can also perform Specific actions based on the error
                 //For example: Notify, retry, clean up, etc.
               }
             }
           }
        }
           post {
             Failure {
               //Actions to perform if the pipeline fails
               echo 'pipeline execution failed.'
               //You can add additional actions like sending notifications, cleanup, etc.
             }
           Success {
             //Actions to perform if the pipeline succeeds
             echo 'Pipeline executed successfully.'
                  }
             }
         }
     }
