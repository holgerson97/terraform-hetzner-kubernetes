variable "enabled" {

  default = true

}

variable "labels" {

  description = "Labels attached to ressources created by this module."

  type = map(any)
  default = null

  sensitive = false
    
}

variable "root_ssh_key" {

  description = "Your public SSH key that is going to be attached to the root user by cloud init."

  type = string

  sensitive = true
  
}

variable "ansible_ssh_key" {

  description = "Your public SSH key that is going to be attached to the ansible user by cloud init."

  type = string

  sensitive = true
  
}

variable "firewall_name" {

  description = "Name of your Firewall."

  type    = string
  default = "Kube-Firewall"
  
  sensitive = false

}

variable "firewall_rules" {

  description = "Specify Firewallrules."

  type = list(object({
    direction  = string
    protocol   = string
    port       = number
    source_ips = list(string)
  })) 
  default = null

  sensitive = false
  
}

variable "kube_network_name" {

  description = "Specify the name for the network that is going to be connected to your nodes/services."

  type = string
  default = "Kube-Network"

  sensitive = false
  
}

variable "kube_network_range" {

  description = "Specify the IP Range for the network that is going to be connected to your nodes/services."

  type = string

  sensitive = false

}

variable "nodes_range" {

  description = "Specify the CIDR of the nodes subnet for your nodes."

  type = string

  sensitive = false
  
}

variable "loadbalancer_range" {
  
  description = "Specify the CIDR of the loadbalancer subnet for your servcices."

  type = string

  sensitive = false
}

variable "location" {

  description = "Specify the location where your resources should be deployed."

  type = string

  sensitive = false

}

variable "datacenter" {

  description = "Specify the datacenter where your resources should be deployed."

  type = string
  default = null

  sensitive = false

}

variable "server_type_master" {

  description = "Specify the machine type of your master nodes."

  type = string

  sensitive = false
  
}

variable "server_type_slaves" {

  description = "Specify the machine type of your slaves nodes."

  type = string

  sensitive = false
  
}

variable "master_backups" {

  description = "Specify if you want to enable backups for your master nodes."

  type = bool
  default = false

  sensitive = false

}

variable "nodes_backups" {

  description = "Specify if you want to enable backups for your slave nodes."

  type = bool
  default = false

  sensitive = false

}

variable "image" {

  description = "Specify the image you want to deploy on your nodes."

  type = string

  sensitive = false

}

variable "keep_disk" {

  description = "Specify if you want to keep disk when downgrading machines."

  type = bool
  default = false

  sensitive = false

}

variable "iso" {

  description = "Specify the iso used for your machines."

  type = string
  default = null

  sensitive = false

}

variable "rescue" {

  description = "Specify if you want to enable rescure features for your machines."

  type = string
  default = null

  sensitive = false
  
}

variable "ssh_keys" {

  description = "List of SSH keys that should be granted root access. Not recommended, use SSH variable insted."

  type = list(string)
  default = null

  sensitive = true
  
}

variable "kub_masters" {

  description = "Specify number of master nodes."

  type = number
  default = 1

  sensitive = false
  
}

variable "kub_slaves" {

  description = "Specify number of slave nodes."

  type = number
  default = 0

  sensitive = false
  
}