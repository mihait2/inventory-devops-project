provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "inventory-rg"
  location = "East Europe"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "inventory-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "inventory"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}