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

output "route_node_to_loadbalancer_id" {

  value = one(hcloud_network_route.node_to_loadbalancer[*].id)
  
}

output "route_node_to_loadbalancer_network_id" {

  value = one(hcloud_network_route.node_to_loadbalancer[*].network_id)
  
}

output "route_node_to_loadbalancer_destination" {

  value = one(hcloud_network_route.node_to_loadbalancer[*].destination)
  
}

output "route_node_to_loadbalancer_gateway" {

  value = one(hcloud_network_route.node_to_loadbalancer[*].gateway)
  
}

output "kub_master_server_id" {

  value = hcloud_server.kub_masters[*].id
  
}

output "kub_master_server_name" {

  value = hcloud_server.kub_masters[*].name
  
}

output "kub_master_server_server_type" {

  value = hcloud_server.kub_masters[*].server_type
  
}

output "kub_master_server_image" {

  value = hcloud_server.kub_masters[*].image
  
}

output "kub_master_server_location" {

  value = hcloud_server.kub_masters[*].location
  
}

output "kub_master_server_datacenter" {

  value = hcloud_server.kub_masters[*].datacenter
  
}

output "kub_master_server_backup_window" {

  value = hcloud_server.kub_masters[*].backup_window
  
}

output "kub_master_server_backups" {

  value = hcloud_server.kub_masters[*].backups
  
}

output "kub_master_server_iso" {

  value = hcloud_server.kub_masters[*].iso
  
}

output "kub_master_server_ipv4_address" {

  value = hcloud_server.kub_masters[*].ipv4_address
  
}

output "kub_master_server_ipv6_address" {

  value = hcloud_server.kub_masters[*].ipv6_address
  
}

output "kub_master_server_ipv6_network" {

  value = hcloud_server.kub_masters[*].ipv6_network
  
}

output "kub_master_server_status" {

  value = hcloud_server.kub_masters[*].status
  
}

output "kub_master_server_ipv4_labels" {

  value = hcloud_server.kub_masters[*].labels
  
}

output "kub_master_server_ipv4_network" {

  value = hcloud_server.kub_masters[*].network
  
}

output "kub_nodes_server_id" {

  value = hcloud_server.kub_nodes[*].id
  
}

output "kub_nodes_server_name" {

  value = hcloud_server.kub_nodes[*].name
  
}

output "kub_nodes_server_server_type" {

  value = hcloud_server.kub_nodes[*].server_type
  
}

output "kub_nodes_server_image" {

  value = hcloud_server.kub_nodes[*].image
  
}

output "kub_nodes_server_location" {

  value = hcloud_server.kub_nodes[*].location
  
}

output "kub_nodes_server_datacenter" {

  value = hcloud_server.kub_nodes[*].datacenter
  
}

output "kub_nodes_server_backup_window" {

  value = hcloud_server.kub_nodes[*].backup_window
  
}

output "kub_nodes_server_backups" {

  value = hcloud_server.kub_nodes[*].backups
  
}

output "kub_nodes_server_iso" {

  value = hcloud_server.kub_nodes[*].iso
  
}

output "kub_nodes_server_ipv4_address" {

  value = hcloud_server.kub_nodes[*].ipv4_address
  
}

output "kub_nodes_server_ipv6_address" {

  value = hcloud_server.kub_nodes[*].ipv6_address
  
}

output "kub_nodes_server_ipv6_network" {

  value = hcloud_server.kub_nodes[*].ipv6_network
  
}

output "kub_nodes_server_status" {

  value = hcloud_server.kub_nodes[*].status
  
}

output "kub_nodes_server_ipv4_labels" {

  value = hcloud_server.kub_nodes[*].labels
  
}

output "kub_nodes_server_ipv4_network" {

  value = hcloud_server.kub_nodes[*].network
  
}