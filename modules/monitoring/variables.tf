variable "name" {
  description = "Log Analytics Workspace name."
  type        = string

  validation {
    condition     = length(trim(var.name, " ")) > 0
    error_message = "Workspace name cannot be empty."
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

variable "retention_in_days" {
  description = "Workspace retention period."
  type        = number
  default     = 30

  validation {
    condition     = var.retention_in_days >= 30 && var.retention_in_days <= 730
    error_message = "Retention must be between 30 and 730 days."
  }
}

variable "tags" {
  description = "Resource tags."
  type        = map(string)
  default     = {}
}

