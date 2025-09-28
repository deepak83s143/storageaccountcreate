resource "azurerm_storage_account" "k8sstg" {
  name = "stgfork8s"
  resource_group_name = "mademi-rg"
  location = "centralindia"
  account_tier = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_storage_share" "k8sshare" {
  depends_on = [ azurerm_storage_account.k8sstg ]
  name = "k8sshare"
  quota = 5
  storage_account_id = azurerm_storage_account.k8sstg.id
}

data "azurerm_storage_account" "k8sstg1" {
  name = azurerm_storage_account.k8sstg.name
  resource_group_name = azurerm_storage_account.k8sstg.resource_group_name
}

output "k8sstg-key" {
  value = data.azurerm_storage_account.k8sstg1.primary_access_key
  sensitive = true
}