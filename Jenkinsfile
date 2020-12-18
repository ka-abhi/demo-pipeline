pipeline {
  agent any
  stages {
    stage('buzz build') {
      agent any
      steps {
        sh '''ls
jenkins/build.sh'''
      }
    }

    stage('buzz test') {
      steps {
        sh './jenkins/test-all.sh'
      }
    }

  }
}