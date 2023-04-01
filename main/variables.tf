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


