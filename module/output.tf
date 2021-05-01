output "resource_group_name" {

  value = var.resourcegroup == null ? azurerm_resource_group.main[0].name : var.resourcegroup

}
output "virtual_network_name" {

  value = azurerm_virtual_network.main[0].name

}

output "subnet_address_prefixes" {

  value = azurerm_subnet.main.*.address_prefixes
  
}

output "dns_servers_ip" {

  value = var.dns_servers

}