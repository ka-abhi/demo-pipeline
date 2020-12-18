pipeline {
  agent any
  stages {
    stage('buzz build') {
      agent any
      steps {
        sh '''#pwd
#ls -lR
cd jenkins
#pwd
sh build.sh
#jenkins/build.sh'''
      }
    }

    stage('buzz test') {
      steps {
        sh '''#./jenkins/test-all.sh
#pwd
#ls -lR
cd jenkins
sh test-all.sh'''
      }
    }

  }
}