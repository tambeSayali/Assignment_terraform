variable "rg_name" {
  
  type        = string
}

variable "location" {
  
  type        = string
}

variable "sql_admin" {
  
  type        = string
}

variable "sql_password" {
 
  type        = string
  sensitive   = true
}

variable "db_name" {
  
  type        = string
}

variable "vm_count" {
  
  type        = number
  default     = 2
}

variable "admin_username" {
  
  type        = string
}

variable "admin_password" {
  
  type        = string
  sensitive   = true
}