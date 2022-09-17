terraform {

  required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.97.0"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-prd01"
    storage_account_name = "saterraformdevops"
    container_name       = "terraformdemo"
    key                  = "appgw.tfstate"
  }
}