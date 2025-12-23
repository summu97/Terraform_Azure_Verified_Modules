terraform {
  required_version = ">= 1.9, < 2.0"

  required_providers {
    azapi = {
      source  = "Azure/azapi"
      version = "~> 2.4"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    modtm = {
      source  = "azure/modtm"
      version = "~> 0.3"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.0"
    }
  }
}


provider "azurerm" {
  features {}
  use_msi                         = true
  subscription_id                 = "d629b553-466f-4caa-b64b-9ba2bae97c3f"
  resource_provider_registrations = "none"
}
provider "azapi" {
  # Optional: subscription_id = "your-subscription-id"
}
