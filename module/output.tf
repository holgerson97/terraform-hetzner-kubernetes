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

output "subnet_masters_id" {

  value = one(hcloud_network_subnet.masters[*].id)

}

output "subnet_masters_network_id" {

  value = one(hcloud_network_subnet.masters[*].network_id)

}

output "subnet_masters_type" {

  value = one(hcloud_network_subnet.masters[*].type)

}

output "subnet_masters_ip_range" {

  value = one(hcloud_network_subnet.masters[*].ip_range)

}

output "subnet_masters_network_zone" {

  value = one(hcloud_network_subnet.masters[*].network_zone)

}

output "subnet_masters_vswitch_id" {

  value = one(hcloud_network_subnet.masters[*].vswitch_id)

}

output "subnet_slaves_id" {

  value = one(hcloud_network_subnet.slaves[*].id)

}

output "subnet_slaves_network_id" {

  value = one(hcloud_network_subnet.slaves[*].network_id)

}

output "subnet_slaves_type" {

  value = one(hcloud_network_subnet.slaves[*].type)

}

output "subnet_slaves_ip_range" {

  value = one(hcloud_network_subnet.slaves[*].ip_range)

}

output "subnet_slaves_network_zone" {

  value = one(hcloud_network_subnet.slaves[*].network_zone)

}

output "subnet_slaves_vswitch_id" {

  value = one(hcloud_network_subnet.slaves[*].vswitch_id)

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

output "kub_slaves_server_id" {

  value = hcloud_server.kub_slaves[*].id

}

output "kub_slaves_server_name" {

  value = hcloud_server.kub_slaves[*].name

}

output "kub_slaves_server_server_type" {

  value = hcloud_server.kub_slaves[*].server_type

}

output "kub_slaves_server_image" {

  value = hcloud_server.kub_slaves[*].image

}

output "kub_slaves_server_location" {

  value = hcloud_server.kub_slaves[*].location

}

output "kub_slaves_server_datacenter" {

  value = hcloud_server.kub_slaves[*].datacenter

}

output "kub_slaves_server_backup_window" {

  value = hcloud_server.kub_slaves[*].backup_window

}

output "kub_slaves_server_backups" {

  value = hcloud_server.kub_slaves[*].backups

}

output "kub_slaves_server_iso" {

  value = hcloud_server.kub_slaves[*].iso

}

output "kub_slaves_server_ipv4_address" {

  value = hcloud_server.kub_slaves[*].ipv4_address

}

output "kub_slaves_server_ipv6_address" {

  value = hcloud_server.kub_slaves[*].ipv6_address

}

output "kub_slaves_server_ipv6_network" {

  value = hcloud_server.kub_slaves[*].ipv6_network

}

output "kub_slaves_server_status" {

  value = hcloud_server.kub_slaves[*].status

}

output "kub_slaves_server_ipv4_labels" {

  value = hcloud_server.kub_slaves[*].labels

}

output "kub_slaves_server_ipv4_network" {

  value = hcloud_server.kub_slaves[*].network

}