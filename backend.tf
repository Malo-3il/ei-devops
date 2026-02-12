terraform {
    backend "azurerm" {
      resource_group_name = "rg-terraform-state"
      storage_account_name = "tfstateprod2024"
      container_name = "tfstate"
      key = "production.tfstate"
    }
}