
pipeline{
	agent any
	stages{
		stage('stage1'){
			steps{
				sh 'echo this is stage1'
				}
		}
		stage('stage2'){
			steps{
				sh '''
					echo "Hello from stage2"
				'''
			}
		}
    		stage('stage3'){
      			steps{
        			sh '''
            				bash ${WORKSPACE}/linux/Task1.sh
          			'''
    			}
		}
	}
}
