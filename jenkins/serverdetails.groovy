pipeline {
    agent any
    stages {
        stage('Retrieve Master Details') {
            steps {
                script {
                    // Retrieve and display master server details
                    echo "Master Server Details:"
                    
                    // Execute shell commands to get the hostname and system information
                    def masterHostname = sh(script: 'hostname', returnStdout: true).trim()
                    def masterSystemInfo = sh(script: 'uname -a', returnStdout: true).trim()
                    
                    // Output master details
                    echo "Hostname: ${masterHostname}"
                    echo "System Information: ${masterSystemInfo}"
                    
                    // Get Jenkins master environment details
                    def masterEnv = sh(script: 'printenv', returnStdout: true).trim()
                    
                    // Output environment variables (for advanced details)
                    echo "Environment Variables:"
                    echo masterEnv
                }
            }
        }
        stage('Retrieve Slave Details') {
            steps {
                script {
                    // Retrieve and display details of each connected agent (slave)
                    echo "Connected Slaves (Agents) Details:"
                    
                    def nodes = Jenkins.instance.nodes
                    if (nodes.isEmpty()) {
                        echo "No connected slaves found."
                    } else {
                        nodes.each { node ->
                            def nodeName = node.displayName
                            def nodeDescription = node.getNodeDescription() ?: "No Description"
                            def nodeRemoteFS = node.getRemoteFS() ?: "No Remote FS"
                            def nodeLabels = node.getLabelString() ?: "No Labels"
                            
                            echo "Name: ${nodeName}"
                            echo "Description: ${nodeDescription}"
                            echo "Remote FS: ${nodeRemoteFS}"
                            echo "Labels: ${nodeLabels}"
                            echo "-------------------------------"
                        }
                    }
                }
            }
        }
    }
    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}

