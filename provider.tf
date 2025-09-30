terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.32.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "mademi-rg"
    storage_account_name = "mademistg1"
    container_name = "mademistatefiles"
    key = "stg.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3805d418-505b-4d26-9254-6523d1b472cb"
}
