provider "azurerm" {
  features {}
}


resource "azurerm_mariadb_server" "example" {
  name                = var.mariadb_name
  location            = var.location
  resource_group_name = var.rg_name

  administrator_login          = var.administrator_username
  administrator_login_password = "H@Sh1CoR3!"

  sku_name   = "B_Gen5_2"
  storage_mb = var.storage_profile.storage_mb
  version    = "10.2"

  auto_grow_enabled             = var.storage_profile.auto_grow_enabled
  backup_retention_days         = var.storage_profile.backup_retention_days
  geo_redundant_backup_enabled  = var.storage_profile.geo_redundant_backup_enabled
  public_network_access_enabled = var.storage_profile.public_network_access_enabled
  ssl_enforcement_enabled       = var.storage_profile.ssl_enforcement_enabled
}