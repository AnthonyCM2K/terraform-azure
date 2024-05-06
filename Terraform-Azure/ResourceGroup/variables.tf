variable "base_name" {
  type = string
  #default = "name base_name" #EN CASO SEA UNA BARIABLE ESTATICA
  description = "The base of the name for the Resource Group (RG) and storage account"
}

variable "location" {
  type        = string
  description = "The location for the deployment"
}
