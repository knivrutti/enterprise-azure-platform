variable "name" {
  description = "Virtual Machine name."
  type        = string

  validation {
    condition     = length(trim(var.name, " ")) > 0
    error_message = "VM name cannot be empty."
  }
}

variable "resource_group_name" {
  description = "Resource Group name."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the VM NIC will be deployed."
  type        = string
}

variable "vm_size" {
  description = "Azure VM size."
  type        = string

  validation {
    condition     = length(trim(var.vm_size, " ")) > 0
    error_message = "VM size cannot be empty."
  }
}

variable "admin_username" {
  description = "Linux administrator username."
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key."

  type = string

  validation {
    condition = (
      startswith(var.ssh_public_key, "ssh-rsa ") ||
      startswith(var.ssh_public_key, "ssh-ed25519 ") ||
      startswith(var.ssh_public_key, "ecdsa-")
    )

    error_message = "A valid SSH public key is required."
  }
}

variable "identity_id" {
  description = "User Assigned Managed Identity ID."
  type        = string
}

variable "boot_diagnostics_storage_uri" {
  description = "Storage Account Blob Endpoint."
  type        = string
}

variable "tags" {
  description = "Tags applied to resources."
  type        = map(string)
  default     = {}
}