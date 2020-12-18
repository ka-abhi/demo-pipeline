pipeline {
  agent any
  stages {
    stage('buzz build') {
      agent any
      steps {
        sh '''pwd
ls -lR
cd jenkins
pwd
cat build.sh
#jenkins/build.sh'''
      }
    }

    stage('buzz test') {
      steps {
        sh '''#./jenkins/test-all.sh
pwd
ls -lR'''
      }
    }

  }
}