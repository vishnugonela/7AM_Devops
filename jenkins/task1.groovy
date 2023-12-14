pipeline {
    agent any

    stages {
        stage('Master details') {
            steps {
                echo 'Running task on the master...'
                // Add your master task commands here
                
                   sh '''
                 echo "Building the `hostname -I` the server hostname"
                 echo "the total memory of the space `free -m`"
                 echo "The total disk size in the node is `df -h`in "
                 
                 '''
            }
        }

        stage('Slave Task') {
            agent {
                label 'Node1' // Replace with your slave label or name
            }
            steps {
                echo 'Running task on the slave1...'
                // Add your slave task commands here
                
                   sh '''
                 echo "Building the `hostname -I` the server hostname"
                 echo "the total memory of the space `free -m`"
                 echo "The total disk size in the node is `df -h`in "
                 
                 '''
            }
        }
        
         stage('Slave Task1') {
            agent {
                label 'Node2' // Replace with your slave label or name
            }
            steps {
                echo 'Running task on the slave2...'
                // Add your slave task commands here
                
                   sh '''
                 echo "Building the `hostname -I` the server hostname"
                 echo "the total memory of the space `free -m`"
                 echo "The total disk size in the node is `df -h`in "
                 
                 '''
            }
        }
    }
}
