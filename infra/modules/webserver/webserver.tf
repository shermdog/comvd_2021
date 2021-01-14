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


resource "aws_instance" "webserver" {
  ami                         = data.aws_ami.azl2.id
  instance_type               = "t2.small"
  associate_public_ip_address = false
  key_name                    = var.bastion_key
  subnet_id                   = var.subnet
  vpc_security_group_ids      = var.security_groups

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_webserver_${var.region}"
    }
  )
}

output "webserver_ip" {
  value = aws_instance.webserver.private_ip
}
