output "resource_group_name" {

  value = module.network.resource_group_name

}

output "virtual_network_name" {

  value = module.network.virtual_network_name

}

output "subnet_address_prefixes" {

  value = module.network.subnet_address_prefixes
  
}

output "dns_servers_ip"{

  value = module.network.dns_servers_ip

}