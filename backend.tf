terraform {
  backend "azurerm" {
    resource_group_name  = "JupiterAI-RG"
    storage_account_name = "jupiteraitfstate2026"
    container_name       = "tfstate"
    key                  = "jupiterai.tfstate"
  }
}