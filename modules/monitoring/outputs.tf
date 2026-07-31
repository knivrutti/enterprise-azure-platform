output "id" {
  description = "Workspace ID."
  value       = azurerm_log_analytics_workspace.this.id
}

output "workspace_id" {
  description = "Workspace ID used by Azure Monitor."
  value       = azurerm_log_analytics_workspace.this.workspace_id
}

output "name" {
  description = "Workspace name."
  value       = azurerm_log_analytics_workspace.this.name
}