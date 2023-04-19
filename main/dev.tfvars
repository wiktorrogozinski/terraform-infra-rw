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
  key_vault_name = "kv-appimplementation"
  sku_name       = "standard"

  access_policies = {
    terrraform-service-principal-rw = {
      objectID = "77838574-0899-45b4-beb0-e04bddaa9b7b"
      permissions = {
        secret_permissions      = ["List", "Get", "Backup", "Delete", "Purge", "Recover", "Restore", "Set"]
        certificate_permissions = ["List", "Update", "Create", "Delete", "Purge", "Recover"]
        key_permissions         = ["List", "Update", "Create", "Delete", "Purge", "Recover"]
      }
    }

    uai-app-implementation-dev = {
      objectID = "429d588f-2b77-4cbf-952a-a258ab1e6f33"
      permissions = {
        secret_permissions      = ["List", "Get", "Backup", "Delete", "Purge", "Recover", "Restore", "Set"]
        certificate_permissions = ["List", "Update", "Create", "Delete", "Purge", "Recover"]
        key_permissions         = ["List", "Update", "Create", "Delete", "Purge", "Recover"]
      }
    }
    github-actions-dev = {
      objectID = "fd839758-6160-492a-a97f-57a9b94932fa"
      permissions = {
      secret_permissions      = ["List", "Get", "Backup", "Delete", "Purge", "Recover", "Restore", "Set"]
      certificate_permissions = ["List", "Update", "Create", "Delete", "Purge", "Recover"]
      key_permissions         = ["List", "Update", "Create", "Delete", "Purge", "Recover"]
    }
  }
}


}


