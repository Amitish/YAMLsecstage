terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "newresource"
    storage_account_name = "stgstage"
    container_name       = "cntstage"
    key                  = "stage.tfstate"
  }

}

provider "azurerm" {
    features {}
    subscription_id = "042fadea-fd1e-4ca7-8d9d-6041557cb0c7"
}


