# Root module.
# Child modules will be referenced here.
module "resource_group" {
  source = "./modules/resource-group"

  name     = local.resource_group_name
  location = var.location
  tags     = local.common_tags
}
module "network" {
  source = "./modules/network"

  resource_group_name = module.resource_group.name
  location            = var.location

  name = local.vnet_name

  address_space            = var.vnet_address_space
  public_subnet_prefix     = var.public_subnet_prefix
  private_subnet_prefix    = var.private_subnet_prefix
  management_subnet_prefix = var.management_subnet_prefix

  tags = local.common_tags
}
module "storage" {
  source = "./modules/storage"

  name                = var.storage_account_name
  resource_group_name = module.resource_group.name
  location            = var.location

  tags = local.common_tags
}
module "key_vault" {
  source = "./modules/key-vault"

  name                = var.key_vault_name
  resource_group_name = module.resource_group.name
  location            = var.location

  tenant_id = data.azurerm_client_config.current.tenant_id

  tags = local.common_tags
}
module "identity" {
  source = "./modules/identity"

  name                = local.identity_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  tags = local.common_tags
}
module "compute" {
  source = "./modules/compute"

  name                = local.vm_name
  resource_group_name = module.resource_group.name
  location            = var.location

  subnet_id = module.network.management_subnet_id

  vm_size        = local.vm_size
  admin_username = local.admin_username

  ssh_public_key = var.ssh_public_key

  identity_id = module.identity.id

  boot_diagnostics_storage_uri = module.storage.primary_blob_endpoint

  tags = local.common_tags
}
module "monitoring" {
  source = "./modules/monitoring"

  name                = local.monitoring_name
  resource_group_name = module.resource_group.name
  location            = var.location

  retention_in_days = var.log_analytics_retention_days

  tags = local.common_tags
}