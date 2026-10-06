terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name     = local.resource_group_name
  location = var.location
}

module "network" {
  source = "../../modules/network"

  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  vnet_name           = local.vnet_name

  address_space = [
    "10.0.0.0/16"
  ]

  subnets = var.subnets
}

