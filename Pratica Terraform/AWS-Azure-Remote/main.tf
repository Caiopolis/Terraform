
terraform {

  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"

    }

  }

  
}

//Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


//Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

}

