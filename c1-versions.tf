# # Terraform Block
terraform {
  required_version = "~> 1.2" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "remote" {
  hostname = "app.terraform.io"
  organization = "hoitcs"
  workspaces {
    name = "hoitcs-dev"
  }
}
}


provider "aws" {
  region  = var.aws_region
  #profile = "terraform"
  
}

