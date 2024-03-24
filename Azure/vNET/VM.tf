resource "azurerm_network_interface" "chrisnoon-vm1-interface" {
  name                = "chrisnoon-vm1-nic"
  location            = azurerm_resource_group.chrisnoon-uk-south.location
  resource_group_name = azurerm_resource_group.chrisnoon-uk-south.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.chrisnoon-subnets[count.index]
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "chrisnoon-vm1-vm" {
  name                  = "chrisnoon-vm1"
  resource_group_name   = azurerm_resource_group.chrisnoon-uk-south.name
  location              = azurerm_resource_group.chrisnoon-uk-south.location
  size                  = "Standard_DS1_v2"
  admin_username        = "adminuser"
  admin_password        = "a1k1ra!"
  network_interface_ids = [azurerm_network_interface.example[count.index].id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}