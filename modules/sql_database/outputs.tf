output "db_name" {
  description = "The name of the SQL Database"
  value       = azurerm_mssql_database.db.name
}
