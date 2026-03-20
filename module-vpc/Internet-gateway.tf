# Creating Internet Gateway(public internet access)

resource "aws_internet_gateway" "igw_terraform" {
  vpc_id = aws_vpc.terraf_practice

  tags = {
    Name = terraform_igw
  }
}


# Creating a NAT Gateway for private subnet internet access
# Elastic Gateway
resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

# NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "nat- Gateway"
  }
}
