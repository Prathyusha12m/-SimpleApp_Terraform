# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}
resource "azurerm_resource_group" "rg" {
  name     = "MC_casestudy_cs1_eastus-rg"
  location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


