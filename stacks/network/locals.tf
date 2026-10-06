locals {
  name_prefix = "iac-${var.environment}"

  resource_group_name = "${local.name_prefix}-rg"
  vnet_name           = "${local.name_prefix}-vnet"
}