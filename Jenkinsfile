pipeline {
    agent any
    
    stages {
        stage('terraform invoke') {
           steps{
                
                      sh 'terraform fmt'
		                sh 'terraform init'
                        sh 'terraform plan -out tfplan'
		                sh 'terraform apply "tfplan"'

            }
        } 
    }
}








