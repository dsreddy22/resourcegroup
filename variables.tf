variable "resource_group" {
  type = "string"
  description = "The name of the resource group in which to create the app service and web apps."
  default = "testwebapp84"
}
variable "location" {
  type = "string"
  description = "The location/region where the web apps to be created."
  default = "centralus"
  }
