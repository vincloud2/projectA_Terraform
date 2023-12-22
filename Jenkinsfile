pipeline {
    agent { label "projecta"}
    
    triggers { 
        pollSCM('* * * * *')
    }    

    stages {
        stage('Clone the project ') {
            steps {
                echo 'clone the project'
                git branch: 'main', credentialsId: 'git_hub_vincloud2', url: 'https://github.com/vincloud2/projectA_Terraform.git'
            }
        }
        stage('terrafrom init') {
            steps {
                echo 'terraform init'
                sh 'terraform init'
            }
        }
        stage('terrafrom plan') {
            steps {
                echo 'terraform plan'
                sh 'terraform plan'
            }
        }
        stage('terrafrom apply') {
            steps {
                echo 'check the deploy'
                sh 'terraform apply -auto-approve'
            }
        }    
    }
}
