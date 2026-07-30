resource "azurerm_storage_account" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  min_tls_version               = var.min_tls_version
  https_traffic_only_enabled    = var.https_traffic_only_enabled
  public_network_access_enabled = var.public_network_access_enabled

  tags = var.tags
}