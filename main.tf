# Configure the AzureRM provider (using v2.1)
provider "azurerm" {
    version         = "~>2.14.0"
    features {}
}

# Provision a resource group to hold all Azure resources
resource "azurerm_resource_group" "main" {
    name            = "tfcicd-resources"
    location        = "westeurope"
}
