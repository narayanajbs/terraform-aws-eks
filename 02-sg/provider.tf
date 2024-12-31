terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "terraform-s3-buckeks"
    key    = "sg"
    region = "us-east-1"
    dynamodb_table = "terraform_Dydb"
  }
}

provider "aws" {
  region = "us-east-1"
}