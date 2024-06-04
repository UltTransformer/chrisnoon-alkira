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

# ########################################################
# # Cusotmer Lab

# # Student 1
# resource "azurerm_resource_group" "sydney-vnet-student1" {
#   name     = "sydney-vnet-student1"
#   location = "Australia Central"
# }

# resource "azurerm_virtual_network" "sydney-vnet-student1" {
#   name                = "sydney-vnet-student1"
#   address_space       = ["10.150.1.0/24"]
#   location            = azurerm_resource_group.sydney-vnet-student1.location
#   resource_group_name = azurerm_resource_group.sydney-vnet-student1.name
# }

# resource "azurerm_subnet" "sydney-vnet-student1-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.sydney-vnet-student1.name
#   virtual_network_name = azurerm_virtual_network.sydney-vnet-student1.name
#   address_prefixes     = ["10.150.1.0/25"]
# }

# # Student 2
# resource "azurerm_resource_group" "mumbai-vnet-student2" {
#   name     = "mumbai-vnet-student2"
#   location = "Central India"
# }

# resource "azurerm_virtual_network" "mumbai-vnet-student2" {
#   name                = "mumbai-vnet-student2"
#   address_space       = ["10.150.2.0/24"]
#   location            = azurerm_resource_group.mumbai-vnet-student2.location
#   resource_group_name = azurerm_resource_group.mumbai-vnet-student2.name
# }

# resource "azurerm_subnet" "mumbai-vnet-student2-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.mumbai-vnet-student2.name
#   virtual_network_name = azurerm_virtual_network.mumbai-vnet-student2.name
#   address_prefixes     = ["10.150.2.0/25"]
# }

# # Student 3
# resource "azurerm_resource_group" "virginia-vnet-student3" {
#   name     = "virginia-vnet-student3"
#   location = "East US"
# }

# resource "azurerm_virtual_network" "virginia-vnet-student3" {
#   name                = "virginia-vnet-student3"
#   address_space       = ["10.150.3.0/24"]
#   location            = azurerm_resource_group.virginia-vnet-student3.location
#   resource_group_name = azurerm_resource_group.virginia-vnet-student3.name
# }

# resource "azurerm_subnet" "virginia-vnet-student3-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.virginia-vnet-student3.name
#   virtual_network_name = azurerm_virtual_network.virginia-vnet-student3.name
#   address_prefixes     = ["10.150.3.0/25"]
# }

# # Student 4
# resource "azurerm_resource_group" "ireland-vnet-student4" {
#   name     = "ireland-vnet-student4"
#   location = "North Europe"
# }

# resource "azurerm_virtual_network" "ireland-vnet-student4" {
#   name                = "ireland-vnet-student4"
#   address_space       = ["10.150.4.0/24"]
#   location            = azurerm_resource_group.ireland-vnet-student4.location
#   resource_group_name = azurerm_resource_group.ireland-vnet-student4.name
# }

# resource "azurerm_subnet" "ireland-vnet-student4-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.ireland-vnet-student4.name
#   virtual_network_name = azurerm_virtual_network.ireland-vnet-student4.name
#   address_prefixes     = ["10.150.4.0/25"]
# }

# # Student 5
# resource "azurerm_resource_group" "hongkong-vnet-student5" {
#   name     = "hongkong-vnet-student5"
#   location = "East Asia"
# }

# resource "azurerm_virtual_network" "hongkong-vnet-student5" {
#   name                = "hongkong-vnet-student5"
#   address_space       = ["10.150.5.0/24"]
#   location            = azurerm_resource_group.hongkong-vnet-student5.location
#   resource_group_name = azurerm_resource_group.hongkong-vnet-student5.name
# }

# resource "azurerm_subnet" "hongkong-vnet-student5-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.hongkong-vnet-student5.name
#   virtual_network_name = azurerm_virtual_network.hongkong-vnet-student5.name
#   address_prefixes     = ["10.150.5.0/25"]
# }

# # Student 6
# resource "azurerm_resource_group" "california-vnet-student6" {
#   name     = "california-vnet-student6"
#   location = "West US"
# }

# resource "azurerm_virtual_network" "california-vnet-student6" {
#   name                = "california-vnet-student6"
#   address_space       = ["10.150.6.0/24"]
#   location            = azurerm_resource_group.california-vnet-student6.location
#   resource_group_name = azurerm_resource_group.california-vnet-student6.name
# }

# resource "azurerm_subnet" "california-vnet-student6-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.california-vnet-student6.name
#   virtual_network_name = azurerm_virtual_network.california-vnet-student6.name
#   address_prefixes     = ["10.150.6.0/25"]
# }

# # Student 7
# resource "azurerm_resource_group" "origon-vnet-student7" {
#   name     = "origon-vnet-student7"
#   location = "East US 2"
# }

# resource "azurerm_virtual_network" "origon-vnet-student7" {
#   name                = "origon-vnet-student7"
#   address_space       = ["10.150.7.0/24"]
#   location            = azurerm_resource_group.origon-vnet-student7.location
#   resource_group_name = azurerm_resource_group.origon-vnet-student7.name
# }

# resource "azurerm_subnet" "origon-vnet-student7-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.origon-vnet-student7.name
#   virtual_network_name = azurerm_virtual_network.origon-vnet-student7.name
#   address_prefixes     = ["10.150.7.0/25"]
# }

# # Student 8
# resource "azurerm_resource_group" "frankfurt-vnet-student8" {
#   name     = "frankfurt-vnet-student8"
#   location = "Germany West Central"
# }

# resource "azurerm_virtual_network" "frankfurt-vnet-student8" {
#   name                = "frankfurt-vnet-student8"
#   address_space       = ["10.150.8.0/24"]
#   location            = azurerm_resource_group.frankfurt-vnet-student8.location
#   resource_group_name = azurerm_resource_group.frankfurt-vnet-student8.name
# }

# resource "azurerm_subnet" "frankfurt-vnet-student8-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.frankfurt-vnet-student8.name
#   virtual_network_name = azurerm_virtual_network.frankfurt-vnet-student8.name
#   address_prefixes     = ["10.150.8.0/25"]
# }

# # Student 9
# resource "azurerm_resource_group" "tokyo-vnet-student9" {
#   name     = "tokyo-vnet-student9"
#   location = "Japan East"
# }

# resource "azurerm_virtual_network" "tokyo-vnet-student9" {
#   name                = "tokyo-vnet-student9"
#   address_space       = ["10.150.9.0/24"]
#   location            = azurerm_resource_group.tokyo-vnet-student9.location
#   resource_group_name = azurerm_resource_group.tokyo-vnet-student9.name
# }

# resource "azurerm_subnet" "tokyo-vnet-student9-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.tokyo-vnet-student9.name
#   virtual_network_name = azurerm_virtual_network.tokyo-vnet-student9.name
#   address_prefixes     = ["10.150.9.0/25"]
# }

# # Student 10
# resource "azurerm_resource_group" "ohio-vnet-student10" {
#   name     = "ohio-vnet-student10"
#   location = "North Central US"
# }

# resource "azurerm_virtual_network" "ohio-vnet-student10" {
#   name                = "ohio-vnet-student10"
#   address_space       = ["10.150.10.0/24"]
#   location            = azurerm_resource_group.ohio-vnet-student10.location
#   resource_group_name = azurerm_resource_group.ohio-vnet-student10.name
# }

# resource "azurerm_subnet" "ohio-vnet-student10-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.ohio-vnet-student10.name
#   virtual_network_name = azurerm_virtual_network.ohio-vnet-student10.name
#   address_prefixes     = ["10.150.10.0/25"]
# }

# # Student 11
# resource "azurerm_resource_group" "singapore-vnet-student11" {
#   name     = "singapore-vnet-student11"
#   location = "Southeast Asia"
# }

# resource "azurerm_virtual_network" "singapore-vnet-student11" {
#   name                = "singapore-vnet-student11"
#   address_space       = ["10.150.11.0/24"]
#   location            = azurerm_resource_group.singapore-vnet-student11.location
#   resource_group_name = azurerm_resource_group.singapore-vnet-student11.name
# }

# resource "azurerm_subnet" "singapore-vnet-student11-subnets" {
#   count                = 1
#   name                 = "subnet-${count.index}"
#   resource_group_name  = azurerm_resource_group.singapore-vnet-student11.name
#   virtual_network_name = azurerm_virtual_network.singapore-vnet-student11.name
#   address_prefixes     = ["10.150.11.0/25"]
# }
