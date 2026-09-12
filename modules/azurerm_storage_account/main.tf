
resource "azurerm_storage_account" "storage" {
  
  for_each = var.storage_accounts
  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  }

  resource "azurerm_storage_container" "storage_container" {
    for_each = var.storage_accounts
  name                  = each.value.container_name
  storage_account_id    = azurerm_storage_account.storage[each.key].id
  container_access_type = each.value.container_access_type
}