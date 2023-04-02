variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to be created."
}

variable "location" {
  type        = string
  description = "Location of the resource group."
}

variable "env" {
  description = "Project environment."
  type        = string
}

variable "acr_config" {
  description = "The config options."
  type        = map(any)
}

