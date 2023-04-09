resource_group_name = "app-implementation"
location            = "West Europe"
env                 = "dev"
tenant_id           = "44e9f90f-8a4a-44a7-9dbc-8856049db4a3"

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

identity_name = "uai-app-implementation"

kv_config = {
  key_vault_name     = "kv-appimplementation"
  sku_name           = "standard"
  secret_permissions = ["Get", "Set", "List"]

}


