# Recomendamos encarecidamente utilizar el bloque required_providers para establecer la
# fuente y versión del proveedor Azure que se está utilizando
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # Esto sólo es necesario cuando el usuario, el servicio principal o la identidad que ejecuta Terraform carece de permisos para registrar proveedores de recursos de Azure.
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "group_acm_001" {
  name     = "example-resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}
