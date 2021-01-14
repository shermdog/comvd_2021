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
  user_data = base64encode(<<-EOF
    #!/bin/bash
    /usr/bin/apt update
    /usr/bin/apt install -y ansible postgresql python3-psycopg2 libpq-dev
    EOF
    )

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_database_${var.region}"
    }
  )
}

output "database_ip" {
  value = aws_instance.database.private_ip
}
