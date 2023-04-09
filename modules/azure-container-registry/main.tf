resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = var.admin_enabled
}

resource "azurerm_key_vault_secret" "container_registry_username" {
  name         = "containerregistryusername"
  value        = azurerm_container_registry.acr.admin_username
  key_vault_id = var.key_vault_id
}

resource "azurerm_key_vault_secret" "container_registry_password" {
  name         = "containerregistrypassword"
  value        = azurerm_container_registry.acr.admin_password
  key_vault_id = var.key_vault_id
}

