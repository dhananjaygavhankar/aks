terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "DoNotDeleteRg"
    storage_account_name = "donotdeletestorage555"
    container_name       = "tfstate"
    key                  = "akstfstate"
    subscription_id      = "3a45f28c-3b05-4d1b-b640-21585be45e39"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3a45f28c-3b05-4d1b-b640-21585be45e39"
}