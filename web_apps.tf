resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}
resource "azurerm_app_service" "webapp" {
  source = "git::https://github.optum.com/CommercialCloud-EAC/terraform_common.git//terraform_module/random_name"
  name                = "${module.random_name.name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${var.app_service_plan_id}"

  site_config {
    dotnet_framework_version = "${var.dotnet_framework_version}"
    scm_type                 = "${var.scm_type}"
}

connection_string {
name  = "${var.connect_string_name}"
type  = "${var.connect_string_type}"
value = "${var.connect_string_value}"
username = "${var.connect_string_user}"
password = "${var.connect_string_secret}"
}
}