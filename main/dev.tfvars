resource_group_name = "app-implementation"
location            = "germanywestcentral"
env                 = "dev"

acr_config = {
  acr_name = "testappacr"
}

aci_config = {
  aci_name       = "testappaci"
  os_type        = "Linux"
  dns_name_label = "testapp-container-group"
  ip_address = {
    type           = "Public"
    dns_name_label = "testapp-container-group"
  }
  image = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
  ports = [{
    port     = 80
    protocol = "TCP"
  }]

}