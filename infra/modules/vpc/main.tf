data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_vpc" "vpc" {
  cidr_block       = var.region_cidr[var.region]
  instance_tenancy = "default"

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_vpc"
    }
  )
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

resource "aws_subnet" "subnet" {
  count = 2
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 1, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_subnet_${count.index}"
    }
  )
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_igw"
    }
  )
}

resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.vpc.id
  route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_rtb_public"
    }
  )
}

resource "aws_route_table_association" "rtb_public_association" {
  count          = length(aws_subnet.subnet)
  subnet_id      = aws_subnet.subnet[count.index].id
  route_table_id = aws_route_table.rtb_public.id
}
