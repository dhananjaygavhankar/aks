variable "name_rg" {}
variable "rg_location" {}
variable "vm2take" {}
variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}
variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}




# variable "aks_vnet" {}
# variable "subnet_name" {}

# variable "subnet_id"{}

# variable "o_version" {}




  