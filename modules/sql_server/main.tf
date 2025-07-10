resource "random_id" "server" {
  byte_length = 4
}

resource "azurerm_mssql_server" "sql" {
  name                         = "sqlserver-${random_id.server.hex}"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin
  administrator_login_password = var.sql_password

  identity {
    type = "SystemAssigned"
  }
}
