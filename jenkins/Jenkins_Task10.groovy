pipeline {
  agent any
  stages {
    stage('Get Artifact from Other Job') {
      steps {
        script {
          //Copy artifacts from another job named 'OtherJobName'
          copyArtifacts(
            projectName: 'OtherJobName',
            filter: 'path/to/artifact/*', //Specify the path to the artifacts(s) you want to copy
            flatten: true // Optional: Flatten the directory structure when copying artifacts
            )
          //Access and use the artifact in your current job
          sh 'ls path/to/artifact' // Example: List contents of the copied artifact directory
          // Add your commands here to work with the copied artifact
                  }
      }
    }
    // Other stages in your current job
    
  }
  post {
    always {
      echo 'Pipeline completed.'
    }
  }
}
}
