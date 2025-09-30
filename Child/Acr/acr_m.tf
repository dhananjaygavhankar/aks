resource "azurerm_container_registry" "example" {
  name                = "dhandhandhana1"
  resource_group_name = var.name_rg
  location            = var.rg_location
  sku                 = "Premium"
}