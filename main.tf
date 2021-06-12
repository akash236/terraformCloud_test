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
  
}


resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}
