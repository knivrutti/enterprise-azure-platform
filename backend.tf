# Remote backend configuration.
# Will be implemented using Azure Storage.
terraform {
  backend "azurerm" {
    resource_group_name  = "kml_rg_main-3b07a864e4554745"
    storage_account_name = "epbackend123456"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}