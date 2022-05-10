variable "mariadb_name" {
    description = "Name of the mariadb server"
    type =  string
    default = "mariadb-server-test-001"
}

variable "location" {
    description = "location where the resources will be created"
    type =  string
    default = ""
}

variable "rg_name" {
    description = "Name of the resource group"
    type =  string
    default = ""
}

variable "administrator_username" {
    description = "Username to login to the server"
    type =  string
    default = "mariadbadmin"
}

variable "administrator_login_password" {
    description = "password to login to the server"
    type =  string
    default = "H@Sh1CoR3!"
}

variable "storage_profile" {
    default = {
        storage_mb                      = 102400
        backup_retention_days           = 15
        geo_redundant_backup_enabled    = false
        auto_grow_enabled               = true
        public_network_access_enabled   = true
        ssl_enforcement_enabled         = true
        ssl_minimal_tls_version_enforced  = "TLS1_1"
    }
}