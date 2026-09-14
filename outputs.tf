output "resource_group_name" {
  description = "Created Resource Group name"
  value       = azurerm_resource_group.jupiterai.name
}

output "resource_group_location" {
  description = "Resource Group location"
  value       = azurerm_resource_group.jupiterai.location
}

output "storage_account_name" {
  description = "Created Storage Account name"
  value       = azurerm_storage_account.jupiterai.name
}