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
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.sydney-vnet-student.name
  virtual_network_name = azurerm_virtual_network.sydney-vnet-student.name
  address_prefixes     = ["10.150.1.0/25"]
}

# Student 2
resource "azurerm_resource_group" "mumbai-vnet-student" {
  name     = "mumbai-vnet-student"
  location = "Central India"
}

resource "azurerm_virtual_network" "mumbai-vnet-student" {
  name                = "mumbai-vnet-student"
  address_space       = ["10.150.2.0/24"]
  location            = azurerm_resource_group.mumbai-vnet-student.location
  resource_group_name = azurerm_resource_group.mumbai-vnet-student.name
}

resource "azurerm_subnet" "mumbai-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.mumbai-vnet-student.name
  virtual_network_name = azurerm_virtual_network.mumbai-vnet-student.name
  address_prefixes     = ["10.150.2.0/25"]
}

# Student 3
resource "azurerm_resource_group" "virginia-vnet-student" {
  name     = "virginia-vnet-student"
  location = "East US"
}

resource "azurerm_virtual_network" "virginia-vnet-student" {
  name                = "virginia-vnet-student"
  address_space       = ["10.150.3.0/24"]
  location            = azurerm_resource_group.virginia-vnet-student.location
  resource_group_name = azurerm_resource_group.virginia-vnet-student.name
}

resource "azurerm_subnet" "virginia-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.virginia-vnet-student.name
  virtual_network_name = azurerm_virtual_network.virginia-vnet-student.name
  address_prefixes     = ["10.150.3.0/25"]
}

# Student 4
resource "azurerm_resource_group" "ireland-vnet-student" {
  name     = "ireland-vnet-student"
  location = "North Europe"
}

resource "azurerm_virtual_network" "ireland-vnet-student" {
  name                = "ireland-vnet-student"
  address_space       = ["10.150.4.0/24"]
  location            = azurerm_resource_group.ireland-vnet-student.location
  resource_group_name = azurerm_resource_group.ireland-vnet-student.name
}

resource "azurerm_subnet" "ireland-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.ireland-vnet-student.name
  virtual_network_name = azurerm_virtual_network.ireland-vnet-student.name
  address_prefixes     = ["10.150.4.0/25"]
}

# Student 5
resource "azurerm_resource_group" "hongkong-vnet-student" {
  name     = "hongkong-vnet-student"
  location = "East Asia"
}

resource "azurerm_virtual_network" "hongkong-vnet-student" {
  name                = "hongkong-vnet-student"
  address_space       = ["10.150.5.0/24"]
  location            = azurerm_resource_group.hongkong-vnet-student.location
  resource_group_name = azurerm_resource_group.hongkong-vnet-student.name
}

resource "azurerm_subnet" "hongkong-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.hongkong-vnet-student.name
  virtual_network_name = azurerm_virtual_network.hongkong-vnet-student.name
  address_prefixes     = ["10.150.5.0/25"]
}

# Student 6
resource "azurerm_resource_group" "california-vnet-student" {
  name     = "california-vnet-student"
  location = "West US"
}

resource "azurerm_virtual_network" "california-vnet-student" {
  name                = "california-vnet-student"
  address_space       = ["10.150.6.0/24"]
  location            = azurerm_resource_group.california-vnet-student.location
  resource_group_name = azurerm_resource_group.california-vnet-student.name
}

resource "azurerm_subnet" "california-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.california-vnet-student.name
  virtual_network_name = azurerm_virtual_network.california-vnet-student.name
  address_prefixes     = ["10.150.6.0/25"]
}

# Student 7
resource "azurerm_resource_group" "origon-vnet-student" {
  name     = "origon-vnet-student"
  location = "East US 2"
}

resource "azurerm_virtual_network" "origon-vnet-student" {
  name                = "origon-vnet-student"
  address_space       = ["10.150.7.0/24"]
  location            = azurerm_resource_group.origon-vnet-student.location
  resource_group_name = azurerm_resource_group.origon-vnet-student.name
}

resource "azurerm_subnet" "origon-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.origon-vnet-student.name
  virtual_network_name = azurerm_virtual_network.origon-vnet-student.name
  address_prefixes     = ["10.150.7.0/25"]
}

# Student 8
resource "azurerm_resource_group" "frankfurt-vnet-student" {
  name     = "frankfurt-vnet-student"
  location = "Germany West Central"
}

resource "azurerm_virtual_network" "frankfurt-vnet-student" {
  name                = "frankfurt-vnet-student"
  address_space       = ["10.150.8.0/24"]
  location            = azurerm_resource_group.frankfurt-vnet-student.location
  resource_group_name = azurerm_resource_group.frankfurt-vnet-student.name
}

resource "azurerm_subnet" "frankfurt-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.frankfurt-vnet-student.name
  virtual_network_name = azurerm_virtual_network.frankfurt-vnet-student.name
  address_prefixes     = ["10.150.8.0/25"]
}

# Student 9
resource "azurerm_resource_group" "tokyo-vnet-student" {
  name     = "tokyo-vnet-student"
  location = "Japan East"
}

resource "azurerm_virtual_network" "tokyo-vnet-student" {
  name                = "tokyo-vnet-student"
  address_space       = ["10.150.9.0/24"]
  location            = azurerm_resource_group.tokyo-vnet-student.location
  resource_group_name = azurerm_resource_group.tokyo-vnet-student.name
}

resource "azurerm_subnet" "tokyo-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.tokyo-vnet-student.name
  virtual_network_name = azurerm_virtual_network.tokyo-vnet-student.name
  address_prefixes     = ["10.150.9.0/25"]
}

# Student 10
resource "azurerm_resource_group" "ohio-vnet-student" {
  name     = "ohio-vnet-student"
  location = "North Central US"
}

resource "azurerm_virtual_network" "ohio-vnet-student" {
  name                = "ohio-vnet-student"
  address_space       = ["10.150.10.0/24"]
  location            = azurerm_resource_group.ohio-vnet-student.location
  resource_group_name = azurerm_resource_group.ohio-vnet-student.name
}

resource "azurerm_subnet" "ohio-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.ohio-vnet-student.name
  virtual_network_name = azurerm_virtual_network.ohio-vnet-student.name
  address_prefixes     = ["10.150.10.0/25"]
}

# Student 11
resource "azurerm_resource_group" "singapore-vnet-student" {
  name     = "singapore-vnet-student"
  location = "Southeast Asia"
}

resource "azurerm_virtual_network" "singapore-vnet-student" {
  name                = "singapore-vnet-student"
  address_space       = ["10.150.11.0/24"]
  location            = azurerm_resource_group.singapore-vnet-student.location
  resource_group_name = azurerm_resource_group.singapore-vnet-student.name
}

resource "azurerm_subnet" "singapore-vnet-student-subnets" {
  count                = 1
  name                 = "subnet-${count.index}"
  resource_group_name  = azurerm_resource_group.singapore-vnet-student.name
  virtual_network_name = azurerm_virtual_network.singapore-vnet-student.name
  address_prefixes     = ["10.150.11.0/25"]
}
