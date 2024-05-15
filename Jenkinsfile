pipeline {
	agent any
	options {
        skipStagesAfterUnstable()
		timeout(time: 30, unit: 'MINUTES')
    	}
	environment { 
	    ENVIRONMENT=''
    	SECRET_ARN=''
		// SLACK_CHANNEL= 'pl-builds-alerts'		
    }
	stages {
		stage('PRE_CHECK') {
			when{
				expression { env.BRANCH_NAME in ['development', 'qa', 'stage', 'production'] }
			}
			steps {
				echo "Step: Deployment, initiated..."
				script {
					committerEmail = sh (
      				script: 'git log -1 --pretty=format:"%an"', returnStdout: true
					).trim()
				}
				echo "Committer Email : '${committerEmail}'"
				// slackSend (color: 'good', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Job has initiated : #${env.BUILD_NUMBER} by ${committerEmail}")
				echo "Removing node_modules and previous build files"
				sh "rm -rf node_modules build"
			}
		}
		stage('DEVELOPMENT') {
			when{
				branch 'development'
			}
			steps {
				script {
					ENVIRONMENT='dev'
				}
			}
		}
		stage('QA') {
			when{
				branch 'qa'
			}
			steps {
				script {
					ENVIRONMENT='qa'
				}

			}
		}
		stage('STAGE') {
			when{
				branch 'stage'
			}
			steps {
				script {
					ENVIRONMENT='stg'
				}
			}
		}
		stage('PROD') {
			when{
				branch 'production'
			}
			steps {
				script {
					ENVIRONMENT='prod'
				}
			}
		}
      	stage('DEPLOY') {
			when{
				expression { env.BRANCH_NAME in ['development', 'qa', 'stage', 'production'] }
			}
        	steps {
          		echo "Deploying to $ENVIRONMENT environment for $GIT_BRANCH branch. Build number #${BUILD_NUMBER}"
          		sh """
            	cd $WORKSPACE
            	chmod +x deploy.sh
            	./deploy.sh $ENVIRONMENT
          		"""
				// slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Build has been completed & uploaded : #${env.BUILD_NUMBER}")
			}
      	}
		stage('POST_CHECKS') {
			when{
				expression { env.BRANCH_NAME in ['development', 'qa', 'stage', 'production'] }
			}
			steps {
				echo "POST test"
			}	
			post {
				always {
					echo "ALWAYS test1"
				}
				// success {
				// 	slackSend (color: 'good', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Job has succeeded : #${env.BUILD_NUMBER} in ${currentBuild.durationString.replace(' and counting', '')} \n For more info, please click (<${env.BUILD_URL}|here>)")
				// }
				// failure {
				// 	slackSend (color: 'danger', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | @channel - Job has failed #${env.BUILD_NUMBER}\nPlease check full info, (<${env.BUILD_URL}|here>)")
				// }
			}
		}		
    } // stages
	post {
		always {
			echo "ALWAYS test2"
		}
		// aborted {
		// 		slackSend (color: '#AEACAC', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Job has aborted : #${env.BUILD_NUMBER} in ${currentBuild.durationString.replace(' and counting', '')} \n For more info, please click (<${env.BUILD_URL}|here>)")
		// }
		// failure {
		// 		slackSend (color: 'danger', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | @channel - Job has failed #${env.BUILD_NUMBER}\nPlease check full info, (<${env.BUILD_URL}|here>)")
		// }
	}
}
