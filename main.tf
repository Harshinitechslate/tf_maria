provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

module "azurerm_mariadb_server" {
    source = "../module\mariadb"
}