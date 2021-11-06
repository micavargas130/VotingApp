pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('01032000')
	}

	stages {

		stage('Build') {

			steps {
				sh 'docker build -t 01032000/voting-app_worker:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push 01032000/voting-app_worker:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
