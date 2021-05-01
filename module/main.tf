# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall
resource "hcloud_firewall" "main" {

  count = var.enabled ? 1 : 0

  name = var.firewall_name

  dynamic {

    for_each = var.firewall_rules ? length(var.firewall_rules) : []

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

  name     = var.node_network_name
  ip_range = var.node_network_range
  
  labels   = var.labels

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet
resource "hcloud_network_subnet" "nodes" {

  count = var.enabled ? 1 : 0

  network_id   = one(hcloud_network.main[*].id)
  type         = "server"
  ip_range     = var.nodes_range
  network_zone = "Nodes IPs"
  
}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet
resource "hcloud_network_subnet" "loadbalancer" {

  count = var.enabled ? 1 : 0

  network_id   = one(hcloud_network.main[*].id)
  type         = "server"
  ip_range     = var.loadbalancer_range
  network_zone = "Loadbalancer IPs"
  
}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_route
resource "hcloud_network_route" "node_to_loadbalancer" {

  count = var.enabled ? 1 : 0
  
  network_id  = one(hcloud_network.main[*].id)
  destination = one(hcloud_network_subnet.loadbalancer[*].ip_range)
  gateway     = 
  
}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server
resource "hcloud_server" "kub-masters" {
  count = var.enabled ? var.kub_masters : 0

  name        = "kub-master-${sum(count.index, 1)}"
  location    = var.location
  datacenter  = var.datacenter
  server_type = var.server_type_master
  backups     = var.master_backups
  image       = var.image
  keep_disk   = var.keep_disk
  iso         = var.iso
  rescue      = var.rescue
  ssh_keys    = var.ssh_keys

  user_data   = one(data.template_file.user_data[*].rendered)

  labels = var.labels

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server_network
resource "hcloud_server_network" "kub_masters" {

  count = var.enabled ? var.kub_masters : 0

  server_id  = hcloud_server.kub_masters[count.index].id
  network_id = one(hcloud_network.main[*].id)
  subnet_id  = one(hcloud_network_subnet.nodes[*].id)

  #TODO assign static

}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server
resource "hcloud_server" "kub_nodes" {
  count = var.enabled ? var.kub_nodes : 0

  name        = "kub-nodes-${sum(count.index, 1)}"
  location    = var.location
  datacenter  = var.datacenter
  server_type = var.server_type_master
  backups     = var.master_backups
  image       = var.image
  keep_disk   = var.keep_disk
  iso         = var.iso
  rescue      = var.rescue
  ssh_keys    = var.ssh_keys

  user_data   = one(data.template_file.user_data[*].rendered)

  labels      = var.labels
  
}

# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server_network
resource "hcloud_server_network" "kub_nodes" {

  count = var.enabled ? var.kub_nodes : 0

  server_id  = hcloud_server.kub_nodes[count.index].id
  network_id = one(hcloud_network.main[*].id)
  subnet_id  = one(hcloud_network_subnet.nodes[*].id)

  #TODO assign static

}