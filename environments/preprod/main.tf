module "azurerm_resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_virtual_network"
  vnet_names = var.vnet_names
}

module "azurerm_subnet" {
  depends_on = [module.azurerm_virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets

}

module "azurerm_storage_account" {
  depends_on       = [module.azurerm_resource_group]
  source           = "../../modules/azurerm_storage_account"
  storage_accounts = var.storage_accounts

}

module "azurerm_public_ip" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../modules/azurerm_public_ip"
  public_ips = var.public_ips

}
module "azurerm_virtual_machine" {
  depends_on = [module.azurerm_subnet, module.azurerm_public_ip]
  source     = "../../modules/azurerm_virtual_machine"
  vms        = var.vms
}
