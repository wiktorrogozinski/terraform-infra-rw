resource "azurerm_key_vault" "current" {
  name                = var.key_vault_name
  location            = var.key_vault_location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = var.sku_name
}

resource "azurerm_key_vault_access_policy" "acr-credentials" {
  key_vault_id       = azurerm_key_vault.current.id
  tenant_id          = var.tenant_id
  object_id          = var.object_id
  secret_permissions = var.secret_permissions
}