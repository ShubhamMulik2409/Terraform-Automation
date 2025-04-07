pipeline {
    agent any

    stages {
        stage('Cloning github repo') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ShubhamMulik2409/Terraform-Automation.git']])
            }
            
        }
    
    stage ("terraform init") {
           steps {
             sh ("terraform init -reconfigure")
              }
        }
        

    stage("Terraform Plan") {
    steps {
        script {
            def planOutput = sh(script: "terraform plan", returnStdout: true)
            echo planOutput
         }
       }
   }







        
    stage ("Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
