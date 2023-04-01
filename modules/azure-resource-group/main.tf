resource "azurerm_resource_group" "resource_group" {

  name     = "${var.resource_group_name}-${var.env}"
  location = var.location
}