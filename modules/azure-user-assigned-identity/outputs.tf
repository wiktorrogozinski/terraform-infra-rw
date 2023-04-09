output "identity_id" {
  value = azurerm_user_assigned_identity.current.id
}

output "identity_client_id" {
  value = azurerm_user_assigned_identity.current.principal_id
}