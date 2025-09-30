resource "azurerm_storage_account" "k8sstg" {
  name = "stgfork8s"
  resource_group_name = "mademi-rg"
  location = "centralindia"
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "rc-create" {
  name = "mademi-rg1"
  location = "eastus"
}