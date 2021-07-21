provider "aws" {
	region = "${var.region}"
}

terraform {
	backend "s3" {
		bucket = "tfhome"
		key = "terraform.tfstate"
		region = "us-east-2"
	}
}