output "resource_group_name" {
  description = "The name of the created resource group"
  value       = module.resource_group.rg_name
}

output "sql_server_name" {
  description = "The name of the SQL Server"
  value       = module.sql_server.sql_server_name
}

output "sql_database_name" {
  description = "The name of the SQL Database"
  value       = module.sql_database.db_name
}

output "linux_vm_names" {
  description = "List of Linux VM names"
  value       = module.linux_vm.vm_names
}