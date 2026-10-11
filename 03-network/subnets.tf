# Creamos las subnets dentro de la VNet.
resource "azurerm_subnet" "web" {
  name                 = var.subnet_name_web
  resource_group_name  = data.azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = var.subnet_web_address_prefixes
}

resource "azurerm_subnet" "db" {
  name                 = var.subnet_name_db
  resource_group_name  = data.azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = var.subnet_db_address_prefixes
}
