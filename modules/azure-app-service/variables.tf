variable "resource_group_name" {
  description = "Name of the resource group in which to create the container group."
}

variable "location" {
  description = "Location of the container group."
}

variable "asp_name" {
  description = "Name of the resource."
}

variable "as_name" {
  description = "Name of the resource."
}

variable "os_type" {
  description = "The kind of the App Service Plan."
  default     = "Linux"
}

variable "sku_name" {
  description = "The size of the App Service Plan."
  default     = "B1"
}

variable "service_plan_id" {
  description = "The ID of the App Service Plan."
}

variable "identity_ids" {
  description = "The list of identity ids."
  type        = list(string)

}

variable "key_vault_reference_identity_id" {
  description = "The id of user assigned identity."

}

