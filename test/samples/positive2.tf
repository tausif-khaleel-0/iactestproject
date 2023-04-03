resource "azurerm_resource_group" "positive1" {
  name     = "resourceGroup1"
  location = "West US"
}

resource "azurerm_container_registry" "positive2" {
  name                     = "containerRegistry1"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = "Premium"
  admin_enabled            = false
  georeplication_locations = ["East US", "West Europe"]
}
resource "azurerm_container_registry" "positive3" {
  name                     = "containerRegistry2"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = "Premium"
  admin_enabled            = true
  georeplication_locations = ["East US", "West Europe"]
}
