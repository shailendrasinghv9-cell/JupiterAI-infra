terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "jupiterai" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "jupiterai" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.jupiterai.name
  location                 = azurerm_resource_group.jupiterai.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = var.environment
    Project     = "JupiterAI"
  }
}