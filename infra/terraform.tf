terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  cloud {
    organization = "lawrence_witt_test"
    workspaces {
      name = "learn-terraform-azure"
    }
  }

  required_version = ">= 1.1.0"
}