output "firewall_id" {

  value = one(hcloud_firewall.main[*].id)
  
}

output "firewall_name" {

  value = one(hcloud_firewall.main[*].name)
  
}

output "firewall_rule" {

  value = one(hcloud_firewall.main[*].rule)
  
}

output "firewall_labels" {

  value = one(hcloud_firewall.main[*].labels)
  
}

output "network_id" {

  value = one(hcloud_network.main[*].id)
  
}

output "network_name" {

  value = one(hcloud_network.main[*].name)
  
}

output "network_ip_range" {

  value = one(hcloud_network.main[*].ip_range)
  
}

output "network_labels" {

  value = one(hcloud_network.main[*].labels)
  
}

output "subnet_nodes_id" {

  value = one(hcloud_network_subnet.nodes[*].id)
  
}

output "subnet_nodes_network_id" {

  value = one(hcloud_network_subnet.nodes[*].network_id)
  
}

output "subnet_nodes_type" {

  value = one(hcloud_network_subnet.nodes[*].type)
  
}

output "subnet_nodes_ip_range" {

  value = one(hcloud_network_subnet.nodes[*].ip_range)
  
}

output "subnet_nodes_network_zone" {

  value = one(hcloud_network_subnet.nodes[*].network_zone)
  
}

output "subnet_nodes_vswitch_id" {

  value = one(hcloud_network_subnet.nodes[*].vswitch_id)
  
}

output "subnet_loadbalancer_id" {

  value = one(hcloud_network_subnet.loadbalancer[*].id)
  
}

output "subnet_loadbalancer_network_id" {

  value = one(hcloud_network_subnet.loadbalancer[*].network_id)
  
}

output "subnet_loadbalancer_type" {

  value = one(hcloud_network_subnet.loadbalancer[*].type)
  
}

output "subnet_loadbalancer_ip_range" {

  value = one(hcloud_network_subnet.loadbalancer[*].ip_range)
  
}

output "subnet_loadbalancer_network_zone" {

  value = one(hcloud_network_subnet.loadbalancer[*].network_zone)
  
}

output "subnet_loadbalancer_vswitch_id" {

  value = one(hcloud_network_subnet.loadbalancer[*].vswitch_id)
  
}
