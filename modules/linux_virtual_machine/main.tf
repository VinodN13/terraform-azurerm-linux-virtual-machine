resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.virtual_machine_name
  location            = var.location
  resource_group_name = var.resource_group_name
  size                = var.vm_size
  admin_username      = var.admin_username

  network_interface_ids = var.network_interface_ids

  dynamic "admin_ssh_key" {
    for_each = var.admin_ssh_key
    content {
      username   = admin_ssh_key.value.username
      public_key = admin_ssh_key.value.public_key
    }
  }

  dynamic "os_disk" {
    for_each = var.os_disk
    content {
      caching              = os_disk.value.caching
      storage_account_type = os_disk.value.storage_account_type
    }
  }

  dynamic "source_image_reference" {
    for_each = var.source_image_reference
    content {
      publisher = source_image_reference.value.publisher
      offer     = source_image_reference.value.offer
      sku       = source_image_reference.value.sku
      version   = source_image_reference.value.version
    }
  }

  tags = var.tags
}
