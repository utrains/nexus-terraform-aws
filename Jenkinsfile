pipeline {
  agent any
 
  stages {
      stage ("terraform init") {
          steps {
              sh 'terraform init' 
              sh 'cd nexus-terraform-aws'
          }
      }
        
      stage ("terraform Action") {
          steps {
              withAWS(credentials: 'aws credentials', region: 'us-east-1') {
                  echo "Terraform action is --> ${action}"
                  sh 'terraform ${action} -auto-approve' 
              }
         }
      }
  }
}
