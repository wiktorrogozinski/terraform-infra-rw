variable "acr_name" {
  type        = string
  description = "Name of the container registry."
}

variable "location" {
  description = "Location where the container registry should be created."
  type        = string
}

variable "sku" {
  description = "SKU of the container registry."
  default     = "Basic"
  type        = string
}

variable "resource_group_name" {
  description = "The name of resource group which ACR will be deployed."
  type        = string

}

variable "admin_enabled" {
  description = "The switch to admin user creation"
  type        = string
  default     = false
}

variable "key_vault_id" {
  description = "The id of key vault."
}


