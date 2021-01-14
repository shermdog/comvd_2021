module "sydney_vpc" {
  source = "./modules/vpc"
  region = "sydney"
  providers = {
    aws = aws.sydney
  }
  creator_tags = local.creator_tag
}

module "sydney_bastion" {
  source = "./modules/bastion"
  region = "sydney"
  providers = {
    aws = aws.sydney
  }
  creator_tags = local.creator_tag
  vpc_id = module.sydney_vpc.vpc_id
  bastion_subnet = module.sydney_vpc.vpc_subnets[0]
  mgmt_ip = var.mgmt_ip
  bastion_key  = var.bastion_key
  bastion_security_groups = [aws_security_group.sydney-private.id]
}

output "sydney_bastion_ip" {
  value = module.sydney_bastion.bastion_ip
}

# accepter
resource "aws_vpc_peering_connection_accepter" "paris_sydney" {
  provider                  = aws.sydney
  vpc_peering_connection_id = aws_vpc_peering_connection.paris_sydney.id
  auto_accept               = true

  tags = merge(
    local.creator_tag,
    {
      Name = "sydney_paris_peering"
      side = "acceptor"
    }
  )
}

resource "aws_route" "vpc-peering-sydney-paris" {
  provider                  = aws.sydney
  route_table_id            = module.sydney_vpc.rtb_interconnect_id
  destination_cidr_block    = module.paris_vpc.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.paris_sydney.id
}

resource "aws_security_group" "sydney-private" {
  name        = "comvd_private_networks"
  description = "Allow all internal traffic"
  vpc_id      = module.sydney_vpc.vpc_id
  provider    = aws.sydney

  ingress {
    description = "Any from internal networks"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [module.paris_vpc.vpc_cidr_block, module.sydney_vpc.vpc_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    local.creator_tag,
    {
      Name = "comvd_sydney_private"
    }
  )
}

module "sydney_webserver" {
  source = "./modules/webserver"
  region = "sydney"
  providers = {
    aws = aws.sydney
  }
  creator_tags = local.creator_tag
  subnet = module.sydney_vpc.vpc_subnets[1]
  bastion_key  = var.bastion_key
  security_groups = [aws_security_group.sydney-private.id]
}

output "sydney_webserver_ip" {
  value = module.sydney_webserver.webserver_ip
}
