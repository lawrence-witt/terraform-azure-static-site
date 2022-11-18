provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "network" {
  source = "./modules/network"

  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

module "storage" {
  source = "./modules/storage"

  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}