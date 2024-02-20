terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "chrisnoon-uk-south" {
  name     = "chrisnoon-uk-south"
  location = "UK South"
}

resource "azurerm_virtual_network" "chrisnoon-vnet" {
  name                = "chrisnoon-vnet"
  address_space       = ["10.21.0.0/16"]
  location            = azurerm_resource_group.chrisnoon-uk-south.location
  resource_group_name = azurerm_resource_group.chrisnoon-uk-south.name
}

resource "azurerm_subnet" "example" {
  count               = 2
  name                = "subnet-${count.index}"
  resource_group_name = azurerm_resource_group.chrisnoon-uk-south.name
  virtual_network_name = azurerm_virtual_network.chrisnoon-vnet.name
  address_prefixes    = ["10.21.${count.index + 1}.0/24"]
}