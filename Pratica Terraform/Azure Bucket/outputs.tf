output "storage_account_id" {
  description = "ID da conta de armazenamento criada no Azure."
  value       = azurerm_storage_account.azureBucket.id
}
