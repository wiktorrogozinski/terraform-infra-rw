resource_group_name = "app-implementation"
location            = "West Europe"
env                 = "dev"

acr_config = {
  acr_name      = "centralacr"
  admin_enabled = true
}

aci_config = {
  aci_name       = "testappacirwtest"
  os_type        = "Linux"
  dns_name_label = "testapp-aci"
  ip_address = {
    type           = "Public"
    dns_name_label = "testapp-aci"
  }
  image = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
  ports = [{
    port     = 80
    protocol = "TCP"
  }]

}