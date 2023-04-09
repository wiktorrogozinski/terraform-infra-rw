output "container_registry_id" {
  value = azurerm_container_registry.acr.id
}

output "container_registry_username" {
  value = azurerm_container_registry.acr.admin_username
}

output "container_registry_password" {
  value = azurerm_container_registry.acr.admin_password
}