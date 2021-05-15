# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall
resource "hcloud_firewall" "main" {

  count = var.enabled ? 1 : 0

  name = var.firewall_name

  dynamic "rule" {

    for_each = var.firewall_rules != null ? var.firewall_rules : []

    content {

      direction  = lookup(element(var.firewall_rules, firewall_rules.key), "direction")
      protocol   = lookup(element(var.firewall_rules, firewall_rules.key), "protocol")
      port       = lookup(element(var.firewall_rules, firewall_rules.key), "port")
      source_ips = lookup(element(var.firewall_rules, firewall_rules.key), "source_ips")

    }

  }

  labels = var.labels

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network
resource "hcloud_network" "main" {

  count = var.enabled ? 1 : 0

  name     = var.kub_network_name
  ip_range = var.kub_network_range

  labels = var.labels

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet
resource "hcloud_network_subnet" "nodes" {

  count = var.enabled ? 1 : 0

  network_id   = one(hcloud_network.main[*].id)
  type         = "server"
  ip_range     = var.nodes_range
  network_zone = "eu-central"

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet
resource "hcloud_network_subnet" "loadbalancer" {

  count = var.enabled ? 1 : 0

  network_id   = one(hcloud_network.main[*].id)
  type         = "server"
  ip_range     = var.loadbalancer_range
  network_zone = "eu-central"

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server
resource "hcloud_server" "kub_masters" {
  count = var.enabled ? var.kub_masters : 0

  name        = "kub-master-${sum([count.index, 1])}"
  location    = var.location
  datacenter  = var.datacenter
  server_type = var.server_type_master
  backups     = var.master_backups
  image       = var.image
  keep_disk   = var.keep_disk
  iso         = var.iso
  rescue      = var.rescue
  ssh_keys    = var.ssh_keys

  user_data = data.template_file.user_data[0].rendered

  labels = var.labels

  depends_on = [
    hcloud_network_subnet.nodes
  ]

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server_network
resource "hcloud_server_network" "kub_masters" {

  count = var.enabled ? var.kub_masters : 0

  server_id = hcloud_server.kub_masters[count.index].id
  subnet_id = one(hcloud_network_subnet.nodes[*].id)

  #TODO assign static

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server
resource "hcloud_server" "kub_slaves" {
  count = var.enabled ? var.kub_slaves : 0

  name        = "kub-slave-${sum([count.index, 1])}"
  location    = var.location
  datacenter  = var.datacenter
  server_type = var.server_type_slaves
  backups     = var.nodes_backups
  image       = var.image
  keep_disk   = var.keep_disk
  iso         = var.iso
  rescue      = var.rescue
  ssh_keys    = var.ssh_keys

  user_data = data.template_file.user_data[0].rendered

  labels = var.labels

  depends_on = [
    hcloud_network_subnet.nodes
  ]

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server_network
resource "hcloud_server_network" "kub_slaves" {

  count = var.enabled ? var.kub_slaves : 0

  server_id = hcloud_server.kub_slaves[count.index].id
  subnet_id = one(hcloud_network_subnet.nodes[*].id)

  #TODO assign static

}