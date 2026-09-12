

resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  name                 = each.value.name
  resource_group_name  = each.value.rg-name
  virtual_network_name = each.value.vnet-name
  address_prefixes     = each.value.address_prefixes


}