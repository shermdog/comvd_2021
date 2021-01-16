data "aws_ami" "azl2" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
}

resource "aws_security_group" "bastion_ssh" {
  name        = "comvd_bastion"
  description = "Allow traffic from Mgmt"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from Mgmt"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.mgmt_ip
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_bastion_ssh"
    }
  )
}


resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.azl2.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = var.bastion_key
  subnet_id                   = var.bastion_subnet
  vpc_security_group_ids      = concat([aws_security_group.bastion_ssh.id], var.bastion_security_groups)

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_bastion_${var.region}"
    }
  )

  connection {
    type     = "ssh"
    user     = "ec2-user"
    host     = self.public_ip
    private_key = file(var.provisioning_key)
  }

  provisioner "file" {
    content     = templatefile("${path.root}/provisioning/templates/ssh.yml.tpl", {moar_keys = var.moar_keys})
    destination = "/home/ec2-user/ssh.yml"
  }

  provisioner "file" {
    content     = templatefile("${path.root}/provisioning/templates/datadog_agent.yml.tpl", {dd_api_key = var.dd_api_key})
    destination = "/home/ec2-user/datadog_agent.yml"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo /usr/bin/amazon-linux-extras install -y ansible2",
      "/usr/bin/ansible-galaxy install datadog.datadog",
      "/usr/bin/ansible-playbook /home/ec2-user/ssh.yml",
      "/usr/bin/ansible-playbook /home/ec2-user/datadog_agent.yml",
    ]
  }
}

output "bastion_ip" {
  value = aws_instance.bastion.public_ip
}
