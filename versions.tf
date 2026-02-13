terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = "<%=cypher.read('secret/azure-sp').tokenize('|')[0]%>"
  client_secret   = "<%=cypher.read('secret/azure-sp').tokenize('|')[1]%>"
  tenant_id       = "<%=cypher.read('secret/azure-sp').tokenize('|')[2]%>"
  subscription_id = "<%=cypher.read('secret/azure-sp').tokenize('|')[3]%>"
}