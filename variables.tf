# Root module variables.
# Variables will be added as the project evolves.
variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environment must be one of: dev, qa, prod."
  }
}

variable "project_name" {
  description = "Project name used for naming Azure resources."
  type        = string
  default     = "enterprise-platform"
}

variable "owner" {
  description = "Resource owner."
  type        = string
  default     = "Cloud Team"
}

variable "cost_center" {
  description = "Cost center identifier."
  type        = string
  default     = "IT"
}

variable "tags" {
  description = "Additional tags applied to Azure resources."
  type        = map(string)
  default     = {}
}
variable "vnet_address_space" {
  description = "Address space for the Virtual Network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "public_subnet_prefix" {
  description = "Address prefixes for the public subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "private_subnet_prefix" {
  description = "Address prefixes for the private subnet."
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "management_subnet_prefix" {
  description = "Address prefixes for the management subnet."
  type        = list(string)
  default     = ["10.0.3.0/24"]
}
variable "storage_account_name" {
  description = "Globally unique storage account name."
  type        = string
}
variable "key_vault_name" {
  description = "Globally unique Key Vault name."
  type        = string
}
variable "ssh_public_key" {
  description = "SSH public key for the Linux VM."
  type        = string

  validation {
    condition = (
      startswith(var.ssh_public_key, "ssh-rsa ") ||
      startswith(var.ssh_public_key, "ssh-ed25519 ") ||
      startswith(var.ssh_public_key, "ecdsa-")
    )
    error_message = "Provide a valid SSH public key."
  }
}