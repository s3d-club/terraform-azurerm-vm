module "name" {
  source = "github.com/s3d-club/terraform-external-name?ref=v0.1.16"

  context = var.name_prefix
  keepers = { script = var.script }
  path    = path.module
  tags    = var.tags
}

resource "azurerm_linux_virtual_machine" "this" {
  admin_username        = var.admin_username
  computer_name         = module.name.prefix
  location              = var.location
  name                  = module.name.prefix
  network_interface_ids = [azurerm_network_interface.this.id]
  resource_group_name   = var.resource_group_name
  source_image_id       = var.source_image_id
  tags                  = module.name.tags

  admin_ssh_key {
    public_key = var.public_key
    username   = var.admin_username
  }

  identity {
    type = "SystemAssigned"
  }

  os_disk {
    caching              = "ReadWrite"
    disk_size_gb         = var.disk_size_gb
    storage_account_type = var.storage_account_type
  }

  plan {
    name      = var.plan.name
    product   = var.plan.product
    publisher = var.plan.publisher
  }

  size = var.size

  lifecycle {
    ignore_changes = [tags]
  }
}

resource "azurerm_network_interface" "this" {
  location            = var.location
  name                = module.name.prefix
  resource_group_name = var.resource_group_name
  tags                = module.name.tags

  ip_configuration {
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = var.subnet_id
  }

  lifecycle {
    ignore_changes = [tags]
  }
}

resource "azurerm_virtual_machine_extension" "this" {
  name                 = "Init"
  publisher            = "Microsoft.Azure.Extensions"
  settings             = jsonencode({ commandToExecute = var.script })
  tags                 = var.tags
  type                 = "CustomScript"
  type_handler_version = "2.0"
  virtual_machine_id   = azurerm_linux_virtual_machine.this.id

  timeouts {
    create = "90m"
  }

  lifecycle {
    ignore_changes = [tags]
  }
}
