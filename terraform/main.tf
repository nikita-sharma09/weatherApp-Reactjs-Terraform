terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
    name = "${var.prefix}-rg"
    location = var.location
}

resource "azurerm_container_registry" "acr" {
    name = "${var.prefix}-acr"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    sku = "Basic"
    admin_enabled = true
}