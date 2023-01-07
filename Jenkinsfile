pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage("Git checkout"){
            steps{
                git 'https://github.com/utrains/nexus-terraform-aws.git'
                sh 'cd nexus-terraform-aws'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform Action") {
            steps {
                withAWS(credentials: 'aws credentials', region: 'us-east-1') {
                    echo "Terraform action is --> ${action}"
                    sh 'terraform ${action} --auto-approve'
                }
            }
        }
    }
}
