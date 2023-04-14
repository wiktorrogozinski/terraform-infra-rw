output "container_registry_id" {
  value = azurerm_container_registry.acr.id
}

output "container_registry_url" {
  value = azurerm_container_registry.acr.login_server

}
