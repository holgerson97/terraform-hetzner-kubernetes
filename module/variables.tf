variable "enabled" {

  default = true

}

variable "resourcegroup" {

  description = "Name of your resourcegroup, if not set this module creates a new one."

  type    = string
  default = null

  sensitive = false

}
variable "namespace" {

  type    = string
  default = "default-name"

}
variable "location" {}

################################ VNET ################################

variable "vnet_address_spaces" {

  description = "Virtual network address spaces."

  type    = list(string)
  default = ["10.10.0.0/16"]

  sensitive = false

}

variable "dns_servers" {

  description = "List of DNS servers."

  type    = list(string)
  default = ["10.10.1.1", "10.10.1.2"]

  sensitive = false

}

variable "vm_protection" {

  description = "Enables protection for VMs inside the virtual network."

  type    = bool
  default = false

  sensitive = false

}

variable "ddos_protection" {

  description = "Enables DDOS protection for the virtual network."

  type    = bool
  default = false

  sensitive = false

}

############################### Subnet ################################

variable "subnet_address_spaces" {

  description = "List of subnet address spaces."

  type    = list(string)
  default = ["10.10.1.0/24"]

  sensitive = false

}

variable "private_link_endpoint_policies" {

  description = "Enable NSG for your private link endpoint."

  type    = bool
  default = false

  sensitive = false

}

variable "private_link_service_policies" {

  description = "Enable NSG for the private link service."

  type    = bool
  default = false

  sensitive = false

}

variable "service_endpoints" {

  description = "The list of Service endpoints to associate with the subnet."

  type    = list(string)
  default = null

  sensitive = false

}

variable "service_endpoint_policy_ids" {

  description = "The list of IDs of Service Endpoint Policies to associate with the subnet."

  type    = list(string)
  default = null

  sensitive = false

}



variable "subnets_with_nat_gw" {

  description = "Subnets that are attached to NAT gateways."

  type    = list(string)
  default = null

  sensitive = false

}

variable "public_ip_method" {

  description = "Specify allocation mehtod for NAT gateways."

  type    = string
  default = "Static"

  sensitive = false

}

variable "public_ip_sku" {

  description = "Specify SKU for public ip addresses."

  type    = string
  default = "Standard"

  sensitive = false

}

variable "public_ip_version" {

  description = "IP version of public IP addresses."

  type    = string
  default = "IPv4"

  sensitive = false

}

variable "public_ip_idle_timeouts" {

  description = "Specify TCP idle timouts for public ips."

  type    = number
  default = 5

  sensitive = false

}

variable "cost_management" {

  description = "If true will create resource to export cost managemnet for this resource group."
  type        = bool
  default     = false

  sensitive = false

}

variable "cm_recurrence_type" {

  description = "Set how the costs for the resource group should be exported."

  type    = string
  default = "Monthly"

  sensitive = false

  #TODO add validation

}

variable "cm_recurrence_period_start" {

  description = "Set the date when to start the recurrence period."

  type    = string
  default = "2021-05-01T00:00:00Z"

  sensitive = false

  #TODO add validation

}

variable "cm_recurrence_period_end" {

  description = "Set the date when to end the recurrence period."

  type    = string
  default = "2021-05-01T00:00:00Z"

  sensitive = false

  # TODO add validation

}

variable "tags" {

  description = "Add tags to your resources."

  type    = map(any)
  default = null

  sensitive = false

}
