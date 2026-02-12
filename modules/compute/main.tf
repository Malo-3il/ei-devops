resource "azurerm_linux_virtual_machine" "vm" {
  name = "vm-ei"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  size = "Standard_B1s"
  admin_username = "lemoingm"

  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  admin_ssh_key {
    username = "lemoingm"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer = "0001-com-ubuntu-server-focal"
    sku = "20_04-lts"
    version = "latest"
  }
}