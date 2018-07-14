pipeline {
  agent {docker 'maven:3.5-alpine'}
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/VStefan01/spring-petclinic'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package'
        junit '**/target/surefire-reports/TEST-*.xml'
      }
    }
  }
}
