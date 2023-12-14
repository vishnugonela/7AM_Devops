pipeline {
      agent any
      stages {
          stage('Master and slave details:') { 
              steps {
                 
                 sh '''
                 echo "Building the `hostname -I` the server hostname"
                 echo "the total memory of the space `free -m`"
                 echo "The total disk size in the node is `df -h`in "
                 
                 '''
                 
              }
          }
      }
}
