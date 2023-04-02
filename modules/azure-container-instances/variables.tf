variable "resource_group_name" {
  description = "Name of the resource group in which to create the container group."
}

variable "location" {
  description = "Location of the container group."
}

variable "name" {
  description = "Name of the container group."
}

variable "dns_name_label" {
  description = "DNS name label for the container group."
}

variable "ip_address_type" {
  description = "The type of IP address to use for the container group."
  default     = "Public"
}

variable "os_type" {
  description = "The container os type."
  default     = "Windows"
}

variable "image" {
  description = "The image of container group."
}

variable "port" {
  description = "The port of container."
}

variable "protocol" {
  description = "The protocol of container."
}
