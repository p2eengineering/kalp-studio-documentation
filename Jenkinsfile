pipeline {
	agent any
	options {
        skipStagesAfterUnstable()
		timeout(time: 30, unit: 'MINUTES')
    	}
	environment { 
  //       	DEV_BUCKET_URL = ''
		// DEV_DIST_ID = ''
		// QA_BUCKET_URL = ''
		// QA_DIST_ID = ''
		STG_BUCKET_URL = 's3://stg-kalp-studio-documentation'
		STG_DIST_ID = 'E3QG5RU6XX8VQ8'
		SLACK_CHANNEL = 'pl-builds-alerts' 
    }
	stages {
		stage('PRE_CHECKS') {
			when{
				expression {
                   	env.BRANCH_NAME == 'development' || env.BRANCH_NAME == 'qa' || env.BRANCH_NAME == 'stage'
                }
			}
			steps {
				echo "Step: Deployment, initiated..."
				script {
					committerEmail = sh (
      				script: 'git log -1 --pretty=format:"%an"', returnStdout: true
					).trim()
				}
				echo "Committer Email : '${committerEmail}'"
				slackSend (color: 'good', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Job has initiated : #${env.BUILD_NUMBER} by ${committerEmail}")
				echo "Removing node_modules and previous build files"
				sh "rm -rf node_modules build"
			}
		}
		stage('BUILD') {
			when{
				expression {
                   	env.BRANCH_NAME == 'development' || env.BRANCH_NAME == 'qa' || env.BRANCH_NAME == 'stage'
                }
			}
			steps {
				slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Build is started : #${env.BUILD_NUMBER}")
				sh "export CI=false && npm install && npm run build"
			}
		}
		stage('DEV_S3') {
			when{
				branch 'development'
			}
			steps {
				sh "aws s3 sync dist/ '${DEV_BUCKET_URL}'"
				slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Build has been completed & uploaded : #${env.BUILD_NUMBER}")
			}
		}
		stage('DEV_CDN') {
			when{
				branch 'development'
			}
			steps {
				slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Creating invalidation : #${env.BUILD_NUMBER}")
				sh "aws cloudfront create-invalidation --distribution-id ${DEV_DIST_ID} --paths '/*'"
				echo "Changes complete"
			}
		}
		stage('QA_S3') {
			when{
				branch 'qa'
			}
			steps {
				sh "aws s3 sync dist/ '${QA_BUCKET_URL}'"
				slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Build has been completed & uploaded : #${env.BUILD_NUMBER}")
			}
		}
		stage('QA_CDN') {
			when{
				branch 'qa'
			}
			steps {
				slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Creating invalidation : #${env.BUILD_NUMBER}")
				sh "aws cloudfront create-invalidation --distribution-id ${QA_DIST_ID} --paths '/*'"
				echo "Changes complete"
			}
		}
		stage('STG_S3') {
			when{
				branch 'stage'
			}
			steps {
				sh "aws s3 sync dist/ '${STG_BUCKET_URL}'"
				slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Build has been completed & uploaded : #${env.BUILD_NUMBER}")
			}
		}
		stage('STG_CDN') {
			when{
				branch 'stage'
			}
			steps {
				slackSend (color: 'warning', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Creating invalidation : #${env.BUILD_NUMBER}")
				sh "aws cloudfront create-invalidation --distribution-id ${STG_DIST_ID} --paths '/*'"
				echo "Changes complete"
			}
		}
		stage('POST_CHECKS') {
			when{
				expression {
                   	env.BRANCH_NAME == 'development' || env.BRANCH_NAME == 'qa' || env.BRANCH_NAME == 'stage'
                }
			}
			steps {
				echo "POST test"
			}	
			post {
				always {
					echo "ALWAYS test1"
				}
				success {
					slackSend (color: 'good', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Job has succeeded : #${env.BUILD_NUMBER} in ${currentBuild.durationString.replace(' and counting', '')} \n For more info, please click (<${env.BUILD_URL}|here>)")
				}
				failure {
					slackSend (color: 'danger', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | @channel - Job has failed #${env.BUILD_NUMBER}\nPlease check full info, (<${env.BUILD_URL}|here>)")
				}
			}
		}
	}
	post {
		always {
			echo "ALWAYS test2"
		}
		aborted {
			slackSend (color: '#AEACAC', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | Job has aborted : #${env.BUILD_NUMBER} in ${currentBuild.durationString.replace(' and counting', '')} \n For more info, please click (<${env.BUILD_URL}|here>)")
		}
		failure {
			slackSend (color: 'danger', channel: "${SLACK_CHANNEL}", message: "${env.JOB_NAME} | @channel - Job has failed #${env.BUILD_NUMBER}\nPlease check full info, (<${env.BUILD_URL}|here>)")
		}
	}
}
