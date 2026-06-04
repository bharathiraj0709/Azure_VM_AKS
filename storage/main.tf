resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstate${random_integer.suffix.result}"
  resource_group_name      = "kml_rg_main-6bcb0c7dca7046f9"
  location                 = "eastus"

  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}