locals {

  name_prefix = "${var.project_name}-${var.environment}"

  resource_group_name = "${local.name_prefix}-rg"

  vnet_name = "${local.name_prefix}-vnet"

  identity_name = "${local.name_prefix}-identity"

  common_tags = merge(
    {
      Environment = var.environment
      Project     = var.project_name
      ManagedBy   = "Terraform"
      Owner       = var.owner
      CostCenter  = var.cost_center
    },
    var.tags
  )
}