# Recomiendo utilizar el bloque required_providers para establecer la
# fuente y versión del proveedor Azure que se está utilizando
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.37.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  #skip_provider_registration = true # Esto sólo es necesario cuando el usuario, el servicio principal o la identidad que ejecuta Terraform carece de permisos para registrar proveedores de recursos de Azure.
  features {}
}

module "ResourceGroup" {
  source = "./ResourceGroup" #ubicacion del segmento modulo, ruta grupo de recursos
  #Definimos las variables 
  base_name = "myfirstresourcegroup22" #El scrip al final agrega las letras RG => ${varibles}RG
  location  = "eastus2"                #Ubicación geográfica
}

module "StorageAccount" {
  source = "./StorageAccount" #ruta,  
  #Definimos las variables
  base_name           = "mystorageaccountterraform22"    #El script crea un storage anteponiendo Cool y Hot (todo en miniutos)
  dlgen2_name         = "mydatalakegen2terraform"        #Los Data Lake Gen2 se crean tanto en Cool como en Cool
  resource_group_name = module.ResourceGroup.rg_name_out #varaibles de salida rg_location_out rg_name_out 
  location            = module.ResourceGroup.rg_location_out
}
