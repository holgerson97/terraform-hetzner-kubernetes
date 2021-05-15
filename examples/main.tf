terraform {
  backend "local" {}
}

terraform {
  required_version = ">=0.15.0"
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.26.0"
    }
  }
}

variable "HCLOUD_TOKEN" {}

provider "hcloud" {

  token = var.HCLOUD_TOKEN

}

module "kubernetes_cluster" {

  source = "../module"

  kub_masters = 1

  location           = "nbg1"
  server_type_master = "cpx11"
  server_type_slaves = "cx11"
  image              = "ubuntu-20.04"

  root_ssh_key    = "null"
  ansible_ssh_key = "null"

  kub_network_range  = "10.10.0.0/16"
  nodes_range        = "10.10.1.0/24"
  loadbalancer_range = "10.10.2.0/24"

}
