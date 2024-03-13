# This file contains the versions of terraform & providers

# terraform { } --> block
# required_version --> specifies terraform version
# required_providers --> block
# aws provier & plugin version of provier should be greater than 4.66
# source --> this is specified where to download this plugin from https://registry.terraform.io/
terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.66"
    }
  }
}