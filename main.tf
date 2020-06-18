# Configure remote state on Azure Storage
terraform {
    backend "azurerm" {
        resource_group_name   = "tstate"
        storage_account_name  = "tstate18180"
        container_name        = "tstate"
        key                   = "terraform.tfstate"
    }
}

# Configure the AzureRM provider (using v2.1)
provider "azurerm" {
    features {}
}

# Provision a resource group to hold all Azure resources
resource "azurerm_resource_group" "state-demo-secure" {
    name     = "state-demo"
    location = "eastus"
}

resource "azurerm_resource_group" "state-demo-secure2" {
    name     = "state-demo2"
    location = "eastus"
}
