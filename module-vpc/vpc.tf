# Creating vpc
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name       = "${var.environment}-vpc"
    Managed_by = "Terraform"

  }
}
# Creating public subnets
resource "aws_subnet" "public" {
  count = 2

  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnets[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name       = "${var.environment}-public-${count.index}"
    Managed_by = "Terraform"
  }
}

# Creating private subnet

resource "aws_subnet" "private" {
  count = 2

  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnets[count.index]

  tags = {
    Name       = "${var.environment}-private-${count.index}"
    Managed_by = "Terraform"
  }
}


# Creating route table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name       = "public-rt"
    Managed_by = "Terraform"
  }
}

# Creating Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name       = "IGW"
    Managed_by = "Terraform"
  }
}

# Creating public RT Assoc
resource "aws_route_table_association" "public" {
  for_each = {
    for idx, subnet in aws_subnet.public :
    idx => subnet.id
  }

  subnet_id      = each.value
  route_table_id = aws_route_table.public_rt.id
}

# Creating private route table
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NAT.id
  }
}

# Creating Private RT Assoc for subnet 2
resource "aws_route_table_association" "private" {
  for_each = {
    for idx, subnet in aws_subnet.private :
    idx => subnet.id
  }

  subnet_id      = each.value
  route_table_id = aws_route_table.private_rt.id
}

# Creating NAT Gateway
resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.NAT_eip.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.igw]
}


# Creating eip
resource "aws_eip" "NAT_eip" {
  domain = "vpc"
}
