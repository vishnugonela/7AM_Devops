pipeline {
    agent any

    parameters {
        string(name: 'USERNAME', defaultValue: '', description: 'Enter your username')
        choice(name: 'ENVIRONMENT', choices: ['dev', 'qa', 'prod'], description: 'Select environment')
    }

    stages {
        stage('User Input and Validation') {
            steps {
                script {
                    // Validate and process USERNAME
                    def username = params.USERNAME
                    if (username.isEmpty()) {
                        error("Username cannot be empty.")
                    } else {
                        echo "Username: ${username}"
                    }

                    // Validate and process ENVIRONMENT
                    def environment = params.ENVIRONMENT
                    if (!['dev', 'qa', 'prod'].contains(environment)) {
                        error("Invalid environment selected.")
                    } else {
                        echo "Selected Environment: ${environment}"
                    }
                }
            }
        }
    }
}
