pipeline {
  agent any
  stages {
        stage('Backup') {
            steps {
                script {
                    // Define the backup directory
                    def backupDir = "/path/to/backup/directory"
                    
                    // Create the backup directory if it doesn't exist
                    sh "mkdir -p ${backupDir}"
                    
                    // Stop Jenkins to ensure a consistent backup
                    sh "sudo systemctl stop jenkins"
                    
                    // Copy the Jenkins home directory to the backup directory
                    sh "cp -r /var/lib/jenkins ${backupDir}"
                    
                    // Start Jenkins after the backup is complete
                    sh "sudo systemctl start jenkins"
              }
      }
    }
}
