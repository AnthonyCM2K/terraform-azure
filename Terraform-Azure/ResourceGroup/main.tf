# Create a resource group
resource "azurerm_resource_group" "rg-acm-test22" {
  name     = "${var.base_name}RG" #var. esta definido en el archivo ./variables.tf
  location = var.location
}
