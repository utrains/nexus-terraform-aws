pipeline {
  agent any
 
  stages {
      stage ("terraform init") {
          steps {
              sh 'terraform init' 
              sh 'ls'
          }
      }
        
      stage ("terraform Action") {
          steps {
              withAWS(credentials: 'aws credentials', region: 'us-east-1') {
                  sh 'terraform apply -auto-approve'
              }
         }
      }
  }
}
