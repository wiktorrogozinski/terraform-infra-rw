variable "key_vault_name" {
  description = "The name of the Azure Key Vault."
}

variable "key_vault_location" {
  description = "The location where the Azure Key Vault will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group that the Azure Key Vault will be created in."
}

variable "tenant_id" {
  description = "The ID of the tenant where the Azure Key Vault will be created."
}

variable "sku_name" {
  description = "The SKU of the Azure Key Vault."
  default     = "standard"
}

variable "object_id" {
  description = "The object ID of the user or service principal that will have access to the Azure Key Vault."
}

variable "secret_permissions" {
  description = "A list of secret permissions for the user or service principal that will have access to the Azure Key Vault."
  type        = list(string)
  default     = []
}