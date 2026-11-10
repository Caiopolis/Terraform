// Documentação Geral:https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
// Documentação Feature Block: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block

terraform {

  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {} // features são responsaveis por habilitar recursos do provider, sem essa configuração o provider não funciona. (ou deixar vazio)
}

//Exemplo:
//  provider "azurerm" {
//     features { 
//         resource_group {
//             prevent_deletion_if_contains_resources = false // Permite a exclusão de um grupo de recursos se ele contiver recursos.
//              }
//          } 
//      }