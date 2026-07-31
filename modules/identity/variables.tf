variable "name" {
  description = "User Assigned Managed Identity name."
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group where the managed identity will be created."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "tags" {
  description = "Tags applied to the managed identity."
  type        = map(string)
  default     = {}
}