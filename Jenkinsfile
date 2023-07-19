pipeline {
    agent any

    environment {
        
        BACKEND_BUCKET        = "vprofile-prod-app"
    }

    parameters {
        choice(
            name: 'Action',
            choices: ['Build', 'Destroy'],
            description: 'The action to take'
        )
        
    }

    stages {
        stage('Init') {
            steps {
                terraformInit()
            }
        }
        stage('Plan') {
            steps {
                terraformPlan()
            }
        }
       
        
        stage('Apply') {
            steps {
                terraformApply()
            }
        }
}

def terraformInit() {
    sh("""
    
        terraform init -backend-config="bucket=${env.BACKEND_BUCKET}" -backend-config="key=demo.tfstate"
    """)
}

def terraformPlan() {
    // Setting Terraform Destroy flag
    if(params.Action == 'Destroy') {
        env.DESTROY = '-destroy'
    } else {
        env.DESTROY = ""
    }

    sh("""
        
        terraform plan ${env.DESTROY}  -no-color -out=tfout
    """)
}

def terraformApply() {
    sh("""
        
        terraform apply tfout -no-color

    """)
}
