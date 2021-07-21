resource "aws_vpc" "tfvpc" {
    cidr_block = "${var.cidr}"
    instance_tenancy = "${var.tenancy}"
    tags = {
        Name = "${terraform.workspace}-tf-vpc"
    }
}