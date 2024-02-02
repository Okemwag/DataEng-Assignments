provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "data-lake-rg" {
  name     = "<Your Resource Group Name>"
  location = "East US" 
}

resource "azurerm_storage_account" "data-lake-storage" {
  name                     = "<Your Unique Storage Account Name>"
  resource_group_name      = azurerm_resource_group.data-lake-rg.name
  location                 = azurerm_resource_group.data-lake-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

    tags = {
        environment = "staging"
    }
}


resource "azurerm_storage_container" "data-lake-container" {
  name                  = "<Your Container Name>"
  storage_account_name  = azurerm_storage_account.data-lake-storage.name
  container_access_type = "private"
}

resource "azurerm_data_lake_store" "data-lake-store" {
  name                = "<Your Data Lake Store Name>"
  resource_group_name = azurerm_resource_group.data-lake-rg.name
  location            = azurerm_resource_group.data-lake-rg.location
}

resource "azurerm_data_lake_store_file" "data-lake-file" {
  name                = "example.txt"
  content             = "Hello, World!"
  resource_group_name = azurerm_resource_group.data-lake-rg.name
  store_name          = azurerm_data_lake_store.data-lake-store.name
}
