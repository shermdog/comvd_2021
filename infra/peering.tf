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
    var.creator_tags,
    {
      Name = "paris_sydney_peering"
      side = "requester"
    }
  )
}

# accepter
resource "aws_vpc_peering_connection_accepter" "paris_sydney" {
  provider                  = aws.sydney
  vpc_peering_connection_id = aws_vpc_peering_connection.paris_sydney.id
  auto_accept               = true

  tags = merge(
    var.creator_tags,
    {
      Name = "sydney_paris_peering"
      side = "acceptor"
    }
  )
}

resource "aws_route" "vpc-peering-paris-sydney" {
  provider                  = aws.paris
  route_table_id            = module.paris_vpc.rtb_interconnect_id
  destination_cidr_block    = module.sydney_vpc.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.paris_sydney.id
}

resource "aws_route" "vpc-peering-sydney-paris" {
  provider                  = aws.sydney
  route_table_id            = module.sydney_vpc.rtb_interconnect_id
  destination_cidr_block    = module.paris_vpc.vpc_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.paris_sydney.id
}
