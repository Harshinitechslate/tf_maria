provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}

module "azurerm_mariadb_server" {
  source = "./modules/mariadb"
  rg_name = azurerm_resource_group.example.name
  location = var.location
}


module "nsg" {
  source = "./modules/nsg"
  rg_name = azurerm_resource_group.example.name
  location = var.location
}
