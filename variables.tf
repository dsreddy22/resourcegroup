variable "resource_group" {
  type = "string"
  description = "The name of the resource group in which to create the app service and web apps."
  default = "testwebapp83"
}
variable "location" {
  type = "string"
  description = "The location/region where the web apps to be created."
  default = "centralus"
}
variable "app_service_plan_id" {
  type = "string"
  description = "The id will come from the appservice plan"
  default = "/subscriptions/84adf927-45fd-4ca8-82a5-59ccda2785f5/resourceGroups/testwebapp83/providers/Microsoft.Web/serverFarms/serviceplan1"
}
variable "dotnet_frame_version" {
  description = "The version of .net frame work for site_config"
}
variable "scm_type" {
  description = "The version of .net frame work for site_config"
}
