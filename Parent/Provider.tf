#============== KINDLY RUN BELLOW COMMAND========== 
# $env:ARM_SUBSCRIPTION_ID = (az account show --query id -o tsv)


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = "4.55.0"

    }
  }
  backend "azurerm" {
    resource_group_name  = "DoNotDeleteRg"
    storage_account_name = "donotdeletestorage5"
    container_name       = "tfstate"
    key                  = "aks_terraform.tfstate"
  }
}



provider "azurerm" {
  features {}
  # use_cli = true
  # subscription_id = "c24701f5-28b9-4143-94b8-dfab761abc82"
  # tenant_id       = "f3b46eba-ff94-48fe-b0b0-2b9574312495"
}


data "azurerm_client_config" "current" {}

output "Output_subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}


# $env:ARM_SUBSCRIPTION_ID = (az account show --query id -o tsv)