# This file contains core configuration of AWS service / resource
# Lets say EC2 -->
#   ec2 related storage / memory / AMI / Security Groups / VPC / Subnets configuration

# I want to use AWS cloud in us-east-1 region & i want to create other
# resources in this particular region
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-automation-instance"
  }
}