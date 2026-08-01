variable "resource_group_name" {
  description = "Existing Azure Resource Group for the Terraform backend."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Globally unique Storage Account name for Terraform state."
  type        = string

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24
    error_message = "Storage Account name must be between 3 and 24 characters."
  }
}

variable "container_name" {
  description = "Blob container name."
  type        = string
  default     = "tfstate"
}