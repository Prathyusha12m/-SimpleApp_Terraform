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
  subscription_id = "f62c1351-b0e5-4a98-9ee9-c04070490d82"
  client_id       = "e8896660-afda-43f1-be40-06ab56491671"
  tenant_id       = "75c87eb0-40cc-4efc-a458-eb3f7b67059e"
}

resource "azurerm_resource_group" "rg" {
name = "rg"
location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


