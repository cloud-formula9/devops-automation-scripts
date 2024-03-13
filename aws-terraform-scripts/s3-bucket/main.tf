# This file contains core configuration of AWS service / resource
# Lets say S3 -->
#   S3 related configuration is present here

# I want to use AWS cloud in us-east-1 region & i want to create other
# resources in this particular region
provider "aws" {
  region = "eu-central-1"
}

# everything has to be underscores
# its not a syntax but standard convention
resource "aws_s3_bucket" "s3_bucket" {
#  Name of the s3 bucket
  bucket = "proj-dev-env-24"

# Optional
#  Why these are needed because --> they help us in identifying their environments & other details
#  Helps us in recognising what are they doing and where are they used
  tags = {
    Name        = "My First Bucket"
    Environment = "Dev"  # prod -> production related bucket
  }
}