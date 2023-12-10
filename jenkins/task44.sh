pipeline {
  agent any
  stages {
    stage('Input') {
      steps {
        input(id: 'userInput', message: 'Please enter your name')
      }
    }
    stage('Validate') {
      steps {
        // Validate the user input
        def 'userInput' = params.userInput
        if (userInput == '') {
          //error('User input must not be empty')
        }
      }
    }
    stage('Proceed') {
      steps {
        // Proceed with the pipeline
        echo "User input: $userInput"
      }
    }
  }
}
