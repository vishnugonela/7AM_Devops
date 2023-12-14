pipeline {
    agent any

    stages {
        stage('Backup Jenkins Home') {
            steps {
                script {
                    def backupDir = '/home/radhakrishnan/devops/git/DEVOPS_CODE/jenkins/backupDir'

                    // Ensure the backup directory exists
                    sh "mkdir -p $backupDir"

                    // Copy Jenkins home directory to backup location
                    sh "cp -r $/var/lib/jenkins/* $backupDir/"
                }
            }
        }

        stage('Backup Job Configuration') {
            steps {
                script {
                    def jobName = 'pipeline1'
                    def backupDir = '/home/radhakrishnan/devops/git/DEVOPS_CODE/jenkins/backupDir'

                    // Export job configuration
                    sh "java -jar $JENKINS_HOME/war/WEB-INF/jenkins-cli.jar -s http://localhost:8080/ get-job $jobName > $backupDir/$jobName.xml"
                }
            }
        }

        // Add more stages for additional backups if needed
    }
}
