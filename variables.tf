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