terraform {

  backend "azurerm" {
    subscription_id      = "2966aa08-f4fd-4f40-bc15-79385c427fa0"
    resource_group_name  = "terraform-staterg"
    storage_account_name = "tfstatestoragerw"
    container_name       = "states"
    key                  = "testapp/dev/dev.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.50.0"
    }
  }
  required_version = ">= 1.4.2"
}


provider "azurerm" {
  features {}
}


module "resource_group" {
  source = "../modules/azure-resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  env                 = var.env
}

module "azure-container-registry" {
  source = "../modules/azure-container-registry"

  acr_name            = "${var.acr_config.acr_name}${var.env}"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  admin_enabled       = var.acr_config.admin_enabled

  depends_on = [module.resource_group]
}

module "app-service" {
  source = "../modules/azure-app-service"

  as_name             = "${var.as_config.name}${var.env}"
  asp_name            = "${var.asp_config.name}${var.env}"
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  service_plan_id     = module.app-service.service_plan_id
  sku_name            = var.asp_config.sku_name
  os_type             = var.asp_config.os_type

}