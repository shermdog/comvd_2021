resource "aws_vpc_peering_connection" "peering" {
  peer_vpc_id = module.sidney_vpc.vpc_id
  vpc_id      = module.paris_vpc.vpc_id
  auto_accept = true

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  tags = merge(
    var.creator_tags,
    {
      Name = "paris_sydney_peering"
    }
  )
}
