output "id" {

  description = "Virtual Machine ID."

  value = azurerm_linux_virtual_machine.this.id
}

output "name" {

  description = "Virtual Machine name."

  value = azurerm_linux_virtual_machine.this.name
}

output "network_interface_id" {

  description = "Network Interface ID."

  value = azurerm_network_interface.this.id
}

output "private_ip_address" {

  description = "Private IP address."

  value = azurerm_network_interface.this.private_ip_address
}