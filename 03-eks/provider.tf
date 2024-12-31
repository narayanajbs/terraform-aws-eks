terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81" # eks module requires more than 5.38
    }
  }

  backend "s3" {
    bucket = "terraform-s3-buckeks"
    key    = "eks"
    region = "us-east-1"
    dynamodb_table = "terraform_Dydb"
  }
}

provider "aws" {
  region = "us-east-1"
}