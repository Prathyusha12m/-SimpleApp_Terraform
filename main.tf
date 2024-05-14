# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}
resource "azurerm_resource_group" "rg" {
Name = "casestudy"
location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


