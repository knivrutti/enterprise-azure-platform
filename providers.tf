provider "azurerm" {
  features {}

  resource_provider_registrations = "none"
}
data "azurerm_client_config" "current" {}