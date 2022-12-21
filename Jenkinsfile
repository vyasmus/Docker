pipeline{
	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dckr_pat_9T5vkoJqu0IbCd1vnUZhyLoNqp4')
	}

	stages {
		stage('Build') {
			steps {
				sh 'docker build -t vyasmus/hello-world:latest .'
			}
		}
		stage('Login') {
			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}
		stage('Push') {
			steps {
				sh 'docker push vyasmus/hello-world:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}
}