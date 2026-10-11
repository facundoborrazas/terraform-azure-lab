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

# Consultamos el Resource Group que ya existe.
data "azurerm_resource_group" "lab" {
  name = "rg-terraform-lab"
}

# Creamos una red virtual dentro del Resource Group.
resource "azurerm_virtual_network" "lab" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.lab.name
  address_space       = var.vnet_address_space
}