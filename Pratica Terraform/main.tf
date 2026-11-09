// Comumente o arquivo Main é o repo que contém a configuração geral do Terraform

terraform{
    required_version = "~> 1.0.0"  //https://developer.hashicorp.com/terraform/language/expressions/version-constraints

    required_providers{

        aws = {

            version = "~> 1.0"
            source  = "hashicorp/aws"
        }


        azurerm = {

            version = "2.0"
            source = "hashicorp/azurerm"

        }
    }


    backend "azurerm" {

    }
}