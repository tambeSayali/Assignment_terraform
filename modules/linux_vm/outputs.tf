output "vm_names" {
  description = "List of Linux VM names"
  value       = [for vm in azurerm_linux_virtual_machine.vm : vm.name]
}
