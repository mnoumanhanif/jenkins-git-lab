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
pipeline {
  agent any

  options {
    timestamps()
  }

  stages {
    stage('Workspace') {
      steps {
        sh 'pwd'
        sh 'ls -la'
      }
    }

    stage('Run script') {
      steps {
        sh 'chmod +x app.sh'
        sh './app.sh'
      }
    }

    stage('Show output') {
      steps {
        sh 'cat build-output.txt'
      }
    }
  }

  post {
    success {
      archiveArtifacts artifacts: 'build-output.txt', onlyIfSuccessful: true
    }
  }
}