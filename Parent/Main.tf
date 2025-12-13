# Resource Group Creation module 

module "rg" {
  source      = "../Child/rf"
  name_rg     = var.name_rg
  rg_location = var.rg_location
}

# Kubernates cluster creation 
module "aks" {
  source       = "../Child/aks"
  depends_on   = [module.rg] #module.vnet
  cluster_name = var.cluster_name
  dns_prefix   = var.dns_prefix
  rg_location  = var.rg_location
  name_rg      = var.name_rg
  # subnet_name  = var.subnet_name
  # aks_vnet = var.aks_vnet
  vm2take = var.vm2take
  # o_version    = var.o_version
}

module "acr" {
  source      = "../Child/Acr"
  depends_on  = [module.rg, module.aks]
  name_rg     = var.name_rg
  rg_location = var.rg_location
}

output "aks_child-id" {
  value = module.aks.Aks_id
}

resource "azurerm_role_assignment" "acr_pull" {
  depends_on           = [module.acr, module.aks]
  scope                = module.acr.acr_id
  role_definition_name = "AcrPull"
  principal_id         = module.aks.Aks_id
}


# Vnet and Subnet creation 
# module "vnet" {
#   source      = "../Child/vlan"
#   depends_on  = [module.rg]
#   name_rg     = var.name_rg
#   rg_location = var.rg_location
#   aks_vnet    = var.aks_vnet
#   subnet_name = var.subnet_name
# }