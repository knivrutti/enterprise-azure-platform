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