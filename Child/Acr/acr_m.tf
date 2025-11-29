resource "azurerm_container_registry" "main" {
  name                = "dhandhandhana15"
  resource_group_name = var.name_rg
  location            = var.rg_location
  sku                 = "Premium"
}

output "acr_id"{
  value = azurerm_container_registry.main.id
}