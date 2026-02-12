terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.location

  tags = {
    environment = "production"
    managed_by = "terraform"
  }
}