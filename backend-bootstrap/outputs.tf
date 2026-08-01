output "storage_account_name" {
  description = "Terraform backend Storage Account name."
  value       = azurerm_storage_account.backend.name
}

output "container_name" {
  description = "Terraform state Blob container name."
  value       = azurerm_storage_container.tfstate.name
}

output "resource_group_name" {
  description = "Terraform backend Resource Group."
  value       = var.resource_group_name
}