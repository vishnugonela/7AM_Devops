pipeline {
      agent {label 'jenkins_server'} 
      stages {
          stage('Clone the Repo:') { 
              steps {
                  echo "the master server address `hostname -I`"  
                  echo "the memory of the server `free -m`"
              }
          }
      }
}
