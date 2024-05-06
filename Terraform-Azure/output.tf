# Varibles de salida(output)

output "StgActName" { #Storage Acount nombre
  value = module.StorageAccount.st-acm-test22_out
}

output "RgName" { #nombre del Resource Group
  value = module.ResourceGroup.rg_name_out
}
