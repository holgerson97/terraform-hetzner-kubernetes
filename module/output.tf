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