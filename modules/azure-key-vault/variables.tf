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


variable "secret_permissions" {
  description = "A list of secret permissions for the user or service principal that will have access to the Azure Key Vault."
  type        = list(string)
  default     = []
}

variable "certificate_permissions" {
  description = "A list of certificate permissions for the user or service principal that will have access to the Azure Key Vault."
  type        = list(string)
  default     = []
}

variable "key_permissions" {
  description = "A list of key permissions for the user or service principal that will have access to the Azure Key Vault."
  type        = list(string)
  default     = []
}

variable "access_policies" {
  description = "Map with objectIDs objects to add privileges to KeyVault."
}