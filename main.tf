resource "random_id" "server" {
  keepers = {
    azi_id = 1
  }

  byte_length = 8
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

resource "azurerm_app_service" "test" {
  name                = "${random_id.server.hex}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${var.app_service_plan_id}"

 /* site_config {
    dotnet_framework_version = "${var.dotnet-frame-version}"
    scm_type                 = "LocalGit"
}*/
}