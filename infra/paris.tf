module "paris_vpc" {
  source = "./modules/vpc"
  region = "paris"
  providers = {
    aws = aws.paris
  }
  creator_tags = local.creator_tag
}

module "paris_bastion" {
  source = "./modules/bastion"
  region = "paris"
  providers = {
    aws = aws.paris
  }
  creator_tags = local.creator_tag
  vpc_id = module.paris_vpc.vpc_id
  bastion_subnet = module.paris_vpc.vpc_subnets[0]
  mgmt_ip = var.mgmt_ip
  bastion_key  = var.bastion_key
  bastion_security_groups = [aws_security_group.paris-sydney.id]
}

data "aws_region" "sydney" {
  provider = aws.sydney
}

# requester
resource "aws_vpc_peering_connection" "paris_sydney" {
  provider    = aws.paris
  vpc_id      = module.paris_vpc.vpc_id
  peer_vpc_id = module.sydney_vpc.vpc_id
  peer_region = data.aws_region.sydney.name
  auto_accept = false

  tags = merge(
    local.creator_tag,
    {
      Name = "paris_sydney_peering"
      side = "requester"
    }
  )
}

resource "aws_route" "vpc-peering-paris-sydney" {
  provider                  = aws.paris
  route_table_id            = module.paris_vpc.rtb_interconnect_id
  destination_cidr_block    = module.sydney_vpc.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.paris_sydney.id
}

resource "aws_security_group" "paris-sydney" {
  name        = "comvd_paris_sydney"
  description = "Allow traffic from Sydney"
  vpc_id      = module.paris_vpc.vpc_id
  provider    = aws.paris

  ingress {
    description = "Any from Sydney"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [module.sydney_vpc.vpc_cidr_block]
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
      Name = "comvd_paris_sydney"
    }
  )
}
