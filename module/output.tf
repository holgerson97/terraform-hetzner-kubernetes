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