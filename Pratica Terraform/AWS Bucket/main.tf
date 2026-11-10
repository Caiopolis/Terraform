// https://registry.terraform.io/providers/hashicorp/aws/latest/docs

terraform {
  required_version = ">= 1.3.0"

  required_providers { //Configuração básica de referênciamento do provider, nesse caso o provider AWS.
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


provider "aws" {
  //Importante: informar a região que será utilizada, caso não seja informado, o provider irá utilizar a região padrão da conta AWS (em relação as Keys não vamos informar aqui)

  region = "us-east-1" // https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html

  default_tags { //ddefault tags servem para padronizar as tags que serão aplicadas em todos os recursos criados pelo Terraform.
    tags = {
      owner      = "cmoreira"
      managed_by = "Terraform"
    }
  }

}
