pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Validate Environment') {
      steps {
        sh '''
ls
pwd
env
ls -a ../
ls -a ../../
'''
      }
    }

    stage('build') {
      steps {
          sh 'chmod a+rw provision.sh && chmod +x provision.sh'
          sh 'PACKER_LOG=1 packer build packer.json'
      }
    }
/*
    stage('Release') {
      steps {
        build job: "galring-red-cross/master", propagate: false, wait: false
      }
    }
*/
  }
   post {
    success {
        build job: "earth-is-flat/master", propagate: false, wait: false
    }
  }
  environment {
    CREDS = credentials('fish-creds')
    AWS_ACCESS_KEY_ID = "$CREDS_USR"
    AWS_SECRET_ACCESS_KEY = "$CREDS_PSW"
    OWNER = 'fish'
    PROJECT_NAME = 'to-mars' 
  }
}
