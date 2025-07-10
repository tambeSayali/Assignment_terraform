module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "sql_server" {
  source        = "./modules/sql_server"
  rg_name       = module.resource_group.rg_name
  location      = var.location
  sql_admin     = var.sql_admin
  sql_password  = var.sql_password
}

module "sql_database" {
  source           = "./modules/sql_database"
  rg_name          = module.resource_group.rg_name
  location         = var.location
  sql_server_name  = module.sql_server.sql_server_name
  db_name          = var.db_name
}

module "linux_vm" {
  source          = "./modules/linux_vm"
  rg_name         = module.resource_group.rg_name
  location        = var.location
  vm_count        = var.vm_count
  admin_username  = var.admin_username
  admin_password  = var.admin_password
}