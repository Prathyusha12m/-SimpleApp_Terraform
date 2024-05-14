# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
}
resource "azurerm_resource_group" "casestudy" {
  name     = "casestudy"
  location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


