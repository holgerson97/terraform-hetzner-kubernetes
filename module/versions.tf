terraform {
  required_version = ">= 0.15.0"
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.26.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}
