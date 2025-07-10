variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "sql_admin" {
  description = "SQL Server admin username"
  type        = string
}

variable "sql_password" {
  description = "SQL Server admin password"
  type        = string
  sensitive   = true
}
