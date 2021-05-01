# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password
resource "random_password" "main" {

    count = var.enabled ? 1 : 0

    length  = 25
    lower   = true
    uppper  = true
    number  = true
    special = true
    
}

data "template_file" "user_data" {

    count = var.enabled ? 1 : 0

    template = file("${path.module}/templates/cloud_init.yml")

    vars = {

        root_ssh_key    = var.ROOT_SSH_KEY
        ansible_ssh_key = var.ANSIBLE_SSH_KEY
        server_passwd   = one(random_password.main[*].result)

    }
}