# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }

  required_version = ">= 1.1.0"
  backend "azurerm" {}

}

resource "azurerm_resource_group" "rg" {
  name     = "Fitnessgeek-rg"
  location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


