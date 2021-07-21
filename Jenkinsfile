pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
        stage('INIT'){
            steps{
                sh "terraform init"
            }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform', type: "org.jenkinsci.plugins.terraform.TerraformInstallation"
    return tfHome
}