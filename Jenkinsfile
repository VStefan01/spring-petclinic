pipeline {
  agent {
    docker {
      image 'maven:3.5-alpine'
      label 'linux1'
      }

  }
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/VStefan01/spring-petclinic'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean compile'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Package') {
      steps {
        sh 'mvn package'
      }
    }
  }
  post {
    always {
      junit '**/target/surefire-reports/TEST-*.xml'
      archiveArtifacts artifacts:'target/*.jar', fingerprint: true
    }
  }
}
