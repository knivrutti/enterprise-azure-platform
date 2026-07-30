output "id" {
  description = "Virtual Network ID."
  value       = azurerm_virtual_network.this.id
}

output "name" {
  description = "Virtual Network name."
  value       = azurerm_virtual_network.this.name
}

output "address_space" {
  description = "Virtual Network address space."
  value       = azurerm_virtual_network.this.address_space
}
output "public_subnet_id" {
  value = azurerm_subnet.public.id
}

output "private_subnet_id" {
  value = azurerm_subnet.private.id
}

output "management_subnet_id" {
  value = azurerm_subnet.management.id
}
output "public_nsg_id" {
  description = "Public NSG ID."
  value       = azurerm_network_security_group.public.id
}

output "private_nsg_id" {
  description = "Private NSG ID."
  value       = azurerm_network_security_group.private.id
}

output "management_nsg_id" {
  description = "Management NSG ID."
  value       = azurerm_network_security_group.management.id
}
