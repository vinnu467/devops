pipeline {
    agent any
    
    stages {
        stage('Destroy Infrastructure') {
            steps {
                sh 'terraform plan -destroy -out=tfplan'
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}








