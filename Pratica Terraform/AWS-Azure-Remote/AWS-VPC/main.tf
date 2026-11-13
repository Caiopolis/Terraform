// Documentação BackEnd S3: https://developer.hashicorp.com/terraform/language/backend/s3


terraform {

  required_version = ">= 1.3.0"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"

    }

  }

  backend "s3" {
    bucket = "cmoreira-s3-terraform"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

}