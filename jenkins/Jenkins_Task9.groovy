pipeline {
  agent any
  stages {
    stage ('Trigger Other Job') {
      steps {
        script {
          def otherJob = build job: 'Other jobName', propagate: false, wait: true
          //Access parameters from the othere job
          def paramFromOtherJob = otherJob.buildVariables.PARAMETER_NAME
          echo "Parameter from Other Job: ${paramFromOtherJob}"
        }
      }
    }
    //Other stages in your current job
  }
  post {
    always {
      echo 'Pipeline completed.'
    }
  }
}
