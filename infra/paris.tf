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
  provisioning_key = var.provisioning_key
  bastion_security_groups = [aws_security_group.paris-private.id]
  moar_keys = var.moar_keys
  dd_api_key = var.dd_api_key
}

output "paris_bastion_ip" {
  value = module.paris_bastion.bastion_ip
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

resource "aws_route_table" "paris_rtb_public" {
  provider    = aws.paris
  vpc_id = module.paris_vpc.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = module.paris_vpc.igw
  }
  route {
    cidr_block = module.sydney_vpc.vpc_cidr_block
    gateway_id = aws_vpc_peering_connection.paris_sydney.id
  }
  tags = merge(
    local.creator_tag,
    {
      Name = "comvd_rtb_public"
    }
  )
}

resource "aws_route_table_association" "paris_rtb_public_association" {
  provider    = aws.paris
  subnet_id      = module.paris_vpc.public_subnet
  route_table_id = aws_route_table.paris_rtb_public.id
}

resource "aws_route_table" "paris_rtb_private" {
  provider    = aws.paris
  vpc_id = module.paris_vpc.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = module.paris_vpc.ngw
  }
  route {
    cidr_block = module.sydney_vpc.vpc_cidr_block
    gateway_id = aws_vpc_peering_connection.paris_sydney.id
  }
  tags = merge(
    local.creator_tag,
    {
      Name = "comvd_rtb_private"
    }
  )
}

resource "aws_route_table_association" "paris_rtb_private_association" {
  provider    = aws.paris
  subnet_id      = module.paris_vpc.private_subnet
  route_table_id = aws_route_table.paris_rtb_private.id
}


resource "aws_security_group" "paris-private" {
  name        = "comvd_private_networks"
  description = "Allow all internal traffic"
  vpc_id      = module.paris_vpc.vpc_id
  provider    = aws.paris

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
      Name = "comvd_paris_private"
    }
  )
}

module "paris_database" {
  source = "./modules/database"
  region = "paris"
  providers = {
    aws = aws.paris
  }
  creator_tags = local.creator_tag
  subnet = module.paris_vpc.vpc_subnets[1]
  bastion_key  = var.bastion_key
  bastion_ip = module.paris_bastion.bastion_ip
  provisioning_key = var.provisioning_key
  security_groups = [aws_security_group.paris-private.id]
  moar_keys = var.moar_keys
  dd_api_key = var.dd_api_key
}

output "paris_database_ip" {
  value = module.paris_database.database_ip
}

module "paris_webserver" {
  source = "./modules/webserver"
  region = "paris"
  providers = {
    aws = aws.paris
  }
  creator_tags = local.creator_tag
  subnet = module.paris_vpc.vpc_subnets[1]
  bastion_key  = var.bastion_key
  bastion_ip = module.paris_bastion.bastion_ip
  provisioning_key = var.provisioning_key
  security_groups = [aws_security_group.paris-private.id]
  moar_keys = var.moar_keys
  dd_api_key = var.dd_api_key
  db_ip = module.paris_database.database_ip
  currency = "EUR"
}

output "paris_webserver_ip" {
  value = module.paris_webserver.webserver_ip
}
