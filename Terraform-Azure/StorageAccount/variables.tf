variable "base_name" {
  type        = string
  description = "The storage account (st) base name"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group (rg)"
}

variable "location" {
  type        = string
  description = "The location for the deployment"
}

variable "dlgen2_name" {
  type        = string
  description = "Data Lake Gen2 (dlgen2)name"
}
