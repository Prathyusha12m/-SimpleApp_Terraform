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
name = "rg"
admin_username = "prathyu12m@gmail.com"
admin_password = "nm,lkjiop"
location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


