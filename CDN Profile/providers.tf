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
  use_msi                         = true
  subscription_id                 = "d629b553-466f-4caa-b64b-9ba2bae97c3f"
  resource_provider_registrations = "none"
}
