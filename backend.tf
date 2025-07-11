terraform {
  backend "azurerm" {
    resource_group_name  = "sstfstate-rg"
    storage_account_name = "sstfstatestorageacct"
    container_name       = "sstfstate"
    key                  = "terraform.tfstate"
  }
}
