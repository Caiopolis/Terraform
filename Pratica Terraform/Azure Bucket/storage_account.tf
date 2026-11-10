//Documentação storage_account: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
//Documentação resource_group: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
//Documentação container: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container
//Documentação localidade: https://learn.microsoft.com/en-us/azure/reliability/availability-zones-service-support



resource "azurerm_resource_group" "azureGrupo" { // Realiza a criação de um grupo de recursos no Azure, que é um container lógico para recursos do Azure.
  name     = var.nome_grupo
  location = var.location

  tags = local.common_tags


}

resource "azurerm_storage_account" "azureBucket" { // Realiza a criação de uma conta de armazenamento no Azure, que é um serviço de armazenamento de dados na nuvem.
  name                     = var.nome_bucket
  resource_group_name      = azurerm_resource_group.azureGrupo.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags

}

resource "azurerm_storage_container" "azureContainer" { // Realiza a criação de um container de armazenamento no Azure, que é um container lógico para armazenar blobs (objetos) dentro de uma conta de armazenamento.
  name               = var.nome_container
  storage_account_id = azurerm_storage_account.azureBucket.id
}