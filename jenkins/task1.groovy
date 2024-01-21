pipeline {
    agent any
    stages {
        stage('Find Master/Slave Server Details') {
            steps {
                // Get the master server name
                def masterServerName = env.JENKINS_URL

                // Get the slave server name
                def slaveServerName = env.COMPUTER_NAME

                // Print the master/slave server details
                echo "Master server name: $masterServerName"
                echo "Slave server name: $slaveServerName"
            }
        }
    }
} 
