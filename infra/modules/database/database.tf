data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"] # Canonical
}


resource "aws_instance" "database" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.large"
  associate_public_ip_address = false
  key_name                    = var.bastion_key
  subnet_id                   = var.subnet
  vpc_security_group_ids      = var.security_groups

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_database_${var.region}"
    }
  )

  connection {
    type     = "ssh"
    user     = "ubuntu"
    host     = self.private_ip
    bastion_host = var.bastion_ip
    bastion_user = var.bastion_user
    bastion_private_key = file(var.provisioning_key)
  }

  provisioner "file" {
    content     = templatefile("${path.root}/provisioning/templates/ssh.yml.tpl", {moar_keys = var.moar_keys})
    destination = "/home/ubuntu/ssh.yml"
  }

  provisioner "file" {
    source      = "${path.root}/provisioning/files/database/"
    destination = "/home/ubuntu"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo /usr/bin/apt update",
      "sudo /usr/bin/apt install -y acl ansible postgresql python3-psycopg2 libpq-dev",
      "/usr/bin/ansible-galaxy collection install community.general",
      "/usr/bin/ansible-playbook /home/ubuntu/ssh.yml",
      "/usr/bin/ansible-playbook /home/ubuntu/ecommerce.yml",
      "/usr/bin/ansible-playbook /home/ubuntu/listen.yml",
      "DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=${var.dd_api_key} DD_SITE=\"datadoghq.com\" bash -c \"$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)\"",
    ]
  }
}

output "database_ip" {
  value = aws_instance.database.private_ip
}
