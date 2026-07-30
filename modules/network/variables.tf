variable "resource_group_name" {
  description = "Resource Group where the VNet will be created."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "name" {
  description = "Virtual Network name."
  type        = string
}

variable "address_space" {
  description = "Address space for the Virtual Network."
  type        = list(string)
}

variable "public_subnet_prefix" {
  description = "Address prefixes for the public subnet."
  type        = list(string)
}

variable "private_subnet_prefix" {
  description = "Address prefixes for the private subnet."
  type        = list(string)
}

variable "management_subnet_prefix" {
  description = "Address prefixes for the management subnet."
  type        = list(string)
}

variable "tags" {
  description = "Tags applied to network resources."
  type        = map(string)
  default     = {}
}