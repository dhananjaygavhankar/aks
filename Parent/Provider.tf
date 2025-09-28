#============== KINDLY RUN BELLOW COMMAND========== 
# $env:ARM_SUBSCRIPTION_ID = (az account show --query id -o tsv)


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "DoNotDeleteRg"
    storage_account_name = "donotdeletestorage5555"
    container_name       = "tfstate"
    key                  = "Gaks_terraform.tfstate"
  }
}



provider "azurerm" {
  features {}
  # use_cli = true
  # subscription_id = "13dfd1e6-6770-4299-b7ea-6aa09b346468"
}


data "azurerm_client_config" "current" {}

output "Output_subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}


# $env:ARM_SUBSCRIPTION_ID = (az account show --query id -o tsv)