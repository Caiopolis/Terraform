resource "azurerm_resource_group" "resource_group" {
  name     = "rg-terraform-state"
  location = var.localidadeAzure
}

resource "azurerm_storage_account" "storage_account" {

  name                     = "cmoreiraremotestate"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.localidadeAzure
  account_tier             = var.tierConta
  account_replication_type = var.recplicacaoConta

  blob_properties{
    versioning_enabled = true
  }

}

resource "azurerm_storage_container" "container" {
  name                  = "vhds"
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = "private"
}