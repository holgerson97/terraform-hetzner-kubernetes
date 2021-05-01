terraform {
  backend "local" {}
}

terraform {
  required_providers {
      required_version = ">=0.15.0"
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.42.0"
    }
  }
}

variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}
variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_TENANT_ID" {}


provider "azurerm" {

  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id       = var.ARM_TENANT_ID

  features {}
}

module "network" {

  source = "../module"

  namespace = "test-network"
  location  = "West Europe"

}