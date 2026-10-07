
output "resource_group_name" {
  description = "Nombre del Resource Group utilizado"
  value       = data.azurerm_resource_group.lab.name
}

output "vnet_name" {
  description = "Nombre de la red virtual"
  value       = azurerm_virtual_network.lab.name
}

output "vnet_id" {
  description = "Identificador de Azure de la VNet"
  value       = azurerm_virtual_network.lab.id
}

output "subnet_id" {
  description = "Identificador de Azure de la subnet"
  value       = azurerm_subnet.web.id
}

output "network_security_group_name" {
  description = "Nombre del Network Security Group de la red web"
  value       = azurerm_network_security_group.web.name
}