provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_mariadb_server" "example" {
  name                = var.mariadb_name
  location            = var.location
  resource_group_name = var.rg_name

  administrator_login          = var.administrator_username
  administrator_login_password = H@Sh1CoR3!

  sku_name   = "B_Gen5_2"
  storage_mb = var.storageProfile.storage_mb
  version    = "10.2"

  auto_grow_enabled             = var.storageProfile.auto_grow_enabled
  backup_retention_days         = var.storageProfile.backup_retention_days
  geo_redundant_backup_enabled  = var.storageProfile.geo_redundant_backup_enabled
  public_network_access_enabled = var.storageProfile.public_network_access_enabled
  ssl_enforcement_enabled       = var.storageProfile.ssl_enforcement_enabled
}