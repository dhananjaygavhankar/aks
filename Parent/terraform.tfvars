# Resource Group Variables
name_rg     = "aks_rg"
rg_location = "centralindia"


# AKS Cluster Variables
cluster_name = "g15-aks-cluster"
dns_prefix   = "g15akscluster"
vm2take      = "standard_a2_v2"
o_version    = "1.33.0"
# min_count    = 1
# max_count    = 2
# max_pods     = 50
# node_count   = 2

# vnet details
aks_vnet    = "aks_vnet4subnet"
subnet_name = "aks_subnet1"