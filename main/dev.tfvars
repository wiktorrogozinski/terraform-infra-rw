resource_group_name = "app-implementation"
location            = "West Europe"
env                 = "dev"

acr_config = {
  acr_name      = "centralacr"
  admin_enabled = true
}

as_config = {
  name = "testapprw"
}

asp_config = {
  name     = "asp-common-"
  os_type  = "Linux"
  sku_name = "B1"
}