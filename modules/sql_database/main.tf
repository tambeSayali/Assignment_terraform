data "azurerm_mssql_server" "sql" {
  name                = var.sql_server_name
  resource_group_name = var.rg_name
}

resource "azurerm_mssql_database" "db" {
  name           = var.db_name
  server_id      = data.azurerm_mssql_server.sql.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  sku_name       = "S0"
}
