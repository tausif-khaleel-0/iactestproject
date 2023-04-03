resource "azurerm_resource_group" "positive4" {
  name     = "resourceGroup1"
  location = "West US"
}

resource "azurerm_container_registry" "positive5" {
  name                     = "containerRegistry5"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  sku                      = "Premium"
  admin_enabled            = true
  georeplication_locations = ["East US", "West Europe"]
}
