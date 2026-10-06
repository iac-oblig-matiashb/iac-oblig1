locals {
  name_prefix = "iac-${var.environment}"

  nic_name = "${local.name_prefix}-nic"
}