provider "aws" {
	region = "${var.region}"
}

terraform{
	required_providers{
		aws = {
			version = "~> 3.27"
		}
	}
	backend "s3" {
		bucket = "home-tf-235679"
		key = "terraform.tfstate"
		region = "us-east-2"
	}
}