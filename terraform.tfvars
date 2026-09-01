rgname = {
  rg1 = {
    name       = "harman1"
    location   = "centralindia"
    managed_by = "Sourbh_kamboj"
  }
}
storage = {
  storage1 = {
    name                     = "harmanstorage"
    resource_group_name      = "harman1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    location                 = "centralindia"
  }
  storage2 = {
    name                     = "harmanstorage"
    resource_group_name      = "harman1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    location                 = "centralindia"
  }
}
vnet = {
  vnet1 = {
    name                = "first_virual_network"
    resource_group_name = "harman1"
    address_space       = ["192.143.0.0/24"]
    location            = "centralindia"
  }
}