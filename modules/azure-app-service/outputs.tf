output "service_plan_id" {
  description = "The app service plan id."
  value       = azurerm_service_plan.current.id
}