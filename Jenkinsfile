pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
        stage('S3 backend bucket'){
            steps{
                script{
                   createS3Bucket('home-tf-235679') 
                }
            }
        }
        stage('INIT'){
            steps{
                sh "terraform --version"
                sh returnStatus: true, script: 'terraform workspace new dev'
                sh "terraform init"
                sh "terraform destroy -var-file=dev.tfvars -auto-approve"
            }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform', type: "org.jenkinsci.plugins.terraform.TerraformInstallation"
    return tfHome
}

def createS3Bucket(bucketName){
    sh returnStatus: true, script: "aws s3 mb s3://${bucketName} --region=us-east-2"
}