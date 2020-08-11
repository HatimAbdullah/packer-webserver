pipeline {
  agent {
    docker {
        image 'hashicorp/packer'
	args '-u root' 
    }

  }
  stages {
    stage('Validate Environment') {
      steps {
        sh '''
ls
pwd
env
'''
      }
    }

    stage('build') {
      steps {
        
          sh 'packer version'
          sh 'PACKER_LOG=1 packer build packer.json'
        

      }
    }

    stage('Release') {
      steps {
        echo 'so close no matter how far'
      }
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
