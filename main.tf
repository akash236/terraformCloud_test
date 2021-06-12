# Using a single workspace:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mytestspace"

    workspaces {
      name = "terraformCloud_test"
    }
  }
}

provider "azurerm" {
  features {}
  version         = "~>2.40.0"
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
  subscription_id = var.ARM_SUBSCRIPTION_ID
}


resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
