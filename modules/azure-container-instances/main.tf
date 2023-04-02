resource "azurerm_container_group" "current" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = var.ip_address_type
  dns_name_label      = var.dns_name_label
  os_type             = var.os_type


  container {
    name   = var.name
    image  = var.image
    cpu    = "1"
    memory = "1.5"
    ports {
      port     = var.port
      protocol = var.protocol
    }
  }
}
