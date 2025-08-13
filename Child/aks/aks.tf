resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.rg_location
  resource_group_name = var.name_rg
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size = var.vm2take
    orchestrator_version = var.o_version
  }

  network_profile {
    network_plugin    = "azure"
    network_policy    = "calico"
    load_balancer_sku = "standard"
  }

  identity {
    type = "SystemAssigned"
  }
}
