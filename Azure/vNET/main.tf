terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

# Create Chris Noon's VPC

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

resource "azurerm_subnet" "chrisnoon-subnets" {
  count                = 2
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.chrisnoon-uk-south.name
  virtual_network_name = azurerm_virtual_network.chrisnoon-vnet.name
  address_prefixes     = ["10.21.${count.index + 1}.0/24"]
}

#####

# Create Ian Plummer's VPC

resource "azurerm_resource_group" "ianplummer-uk-south" {
  name     = "ianplummer-uk-south"
  location = "UK South"
}

resource "azurerm_virtual_network" "ianplummer-vnet" {
  name                = "ianplummer-vnet"
  address_space       = ["10.31.0.0/16"]
  location            = azurerm_resource_group.ianplummer-uk-south.location
  resource_group_name = azurerm_resource_group.ianplummer-uk-south.name
}

resource "azurerm_subnet" "ianplummer-subnets" {
  count                = 2
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.ianplummer-uk-south.name
  virtual_network_name = azurerm_virtual_network.ianplummer-vnet.name
  address_prefixes     = ["10.31.${count.index + 1}.0/24"]
}

#####

# Create Phil Oultrams's VPC

resource "azurerm_resource_group" "philoultram-uk-south" {
  name     = "philoultram-uk-south"
  location = "UK South"
}

resource "azurerm_virtual_network" "philoultram-vnet" {
  name                = "philoultram-vnet"
  address_space       = ["10.41.0.0/16"]
  location            = azurerm_resource_group.philoultram-uk-south.location
  resource_group_name = azurerm_resource_group.philoultram-uk-south.name
}

resource "azurerm_subnet" "philoultram-subnets" {
  count                = 2
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.philoultram-uk-south.name
  virtual_network_name = azurerm_virtual_network.philoultram-vnet.name
  address_prefixes     = ["10.41.${count.index + 1}.0/24"]
}

########################################################
# Cusotmer Lab

# Student 1
resource "azurerm_resource_group" "sydney-vnet-student" {
  name     = "sydney-vnet-student"
  location = "Australia Central"
}

resource "azurerm_virtual_network" "sydney-vnet-student" {
  name                = "sydney-vnet-student"
  address_space       = ["10.150.1.0/24"]
  location            = azurerm_resource_group.sydney-vnet-student.location
  resource_group_name = azurerm_resource_group.sydney-vnet-student.name
}

resource "azurerm_subnet" "sydney-vnet-student-subnets" {
  count                = 2
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.sydney-vnet-student.name
  virtual_network_name = azurerm_virtual_network.sydney-vnet-student.name
  address_prefixes     = ["10.150.1.${count.index + 127}/25"]
}