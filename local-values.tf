# Define Local Values in Terraform
locals {
  environment = var.environment
  name = "mtx-${var.environment}"
  
  common_tags = {
    name = local.name
    environment = local.environment
  }
} 