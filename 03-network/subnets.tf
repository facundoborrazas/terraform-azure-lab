resource "azurerm_subnet" "db" {
  name                 = "snet-db"
  resource_group_name  = data.azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = ["10.10.2.0/24"]
}