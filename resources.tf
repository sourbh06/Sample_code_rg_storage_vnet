
resource "azurerm_resource_group" "rg_27052026" {
  for_each   = var.rgname
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
}

resource "azurerm_storage_account" "storageaccount" {
  depends_on               = [azurerm_resource_group.rg_27052026]
  for_each                 = var.storage
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  
}

resource "azurerm_virtual_network" "vnet" {
  depends_on          = [azurerm_resource_group.rg_27052026]
  for_each            = var.vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = ["192.143.0.0/24"]

}