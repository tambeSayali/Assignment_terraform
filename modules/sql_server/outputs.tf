output "sql_server_name" {
  description = "The name of the SQL Server"
  value       = azurerm_mssql_server.sql.name
}
