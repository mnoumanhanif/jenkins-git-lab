pipeline {
    agent any

    stages {

        stage('Inspect workspace') {
            steps {
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Run lab script') {
            steps {
                sh 'chmod +x app.sh'
                sh './app.sh'
            }
        }

        stage('Archive output') {
            steps {
                archiveArtifacts artifacts: 'build-output.txt', fingerprint: true
            }
        }
    }
}