pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("terraform init") {
            steps {
                sh 'ls'
                sh 'terraform init'
            }
        }
        stage ("terraform ${action}") {
            steps {
                withAWS(credentials: 'aws-credentials') {
                    echo "Terraform action is --> ${action}"
                    sh 'terraform ${action} --auto-approve'
                }
            }
        }
    }
}
