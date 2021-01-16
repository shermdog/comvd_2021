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

output "vpc_cidr_block" {
  value = aws_vpc.vpc.cidr_block
}

output "vpc_subnets" {
  value = aws_subnet.subnet.*.id
}

data "aws_availability_zones" "available" {
  state = "available"
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

output "public_subnet" {
  value = aws_subnet.subnet[0].id
}

output "private_subnet" {
  value = aws_subnet.subnet[1].id
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

output "igw" {
  value = aws_internet_gateway.igw.id
}

resource "aws_eip" "eip_nat_gateway" {
  vpc = true
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eip_nat_gateway.id
  subnet_id = aws_subnet.subnet[0].id
  tags = merge(
    var.creator_tags,
    {
      Name = "comvd_ngw"
    }
  )
}

output "ngw" {
  value = aws_nat_gateway.ngw.id
}
