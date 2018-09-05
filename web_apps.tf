resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}
resource "azurerm_app_service" "webapp" {
  count = "${length(var.webapps)}"
  name                = "${var.webapps[count.index]}-${module.random_name.name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${var.app_service_plan_id}"

  site_config {
    dotnet_framework_version = "${var.dotnet_framework_version}"
    scm_type                 = "${var.scm_type}"
}
*/
source_control {

repo_url = "${var.repourl}"
branch   = "${var.branch}"
}

site_credential {
username = "${var.siteuser}"
password = "${var.sitesecret}"
}

connection_string {
name  = "${var.connect_string_name}"
type  = "${var.connect_string_type}"
value = "${var.connect_string_value}"
username = "${var.connect_string_user}"
password = "${var.connect_string_secret}"
}*/
}
