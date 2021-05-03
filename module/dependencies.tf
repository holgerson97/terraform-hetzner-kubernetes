# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password
resource "random_password" "main" {

    count = var.enabled ? 1 : 0

    length  = 25
    lower   = true
    upper   = true
    number  = true
    special = true
    
}

data "template_file" "user_data" {

    count = var.enabled ? 1 : 0

    template = file("${path.module}/templates/cloud_init.yml")

    vars = {
        
        root_ssh_key    = var.root_ssh_key
        ansible_ssh_key = var.ansible_ssh_key
        server_passwd   =random_password.main[0].result
    }
}