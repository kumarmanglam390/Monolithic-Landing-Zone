terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-kumar"
    storage_account_name = "mumbaiwalastore"
    container_name       = "mumbai"
    key                  = "vm-state"
  }
}
provider "azurerm" {
  features {}
}