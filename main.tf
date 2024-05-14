# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "Fitnessgeek-rg"
  location =  var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


