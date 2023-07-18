pipeline {
    agent any
    parameters {
        choice( choices: ['plan', 'destroy'],description: 'Terraform action to apply',name: 'action')
    }
    
    stages {
        stage('terraform Creating Infrastruture') {
            when {
                expression { params.action == 'plan' }
            }
           steps{
                        sh 'terraform fmt'
		                sh 'terraform init'
                        sh 'terraform plan -out tfplan'
		                sh 'terraform apply "tfplan"'
                }
           } 
        stage('Destroy Infrastructure') {
            when {
                expression { params.action == 'destroy' }
            }
            steps {
                sh 'terraform plan -destroy -out=tfplan'
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}








