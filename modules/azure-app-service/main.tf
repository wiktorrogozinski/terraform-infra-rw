
resource "azurerm_service_plan" "current" {
  name                = var.asp_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_web_app" "current" {
  name                            = var.as_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  service_plan_id                 = var.service_plan_id
  key_vault_reference_identity_id = var.key_vault_reference_identity_id

  identity {
    type         = "UserAssigned"
    identity_ids = var.identity_ids
  }
  site_config {
    application_stack {
      docker_image     = "centralacrdev.azurecr.io/apka"
      docker_image_tag = "8"
    }
  }

}





