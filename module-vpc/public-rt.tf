# Creating Public Route Table

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.terraf_practice
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_terraform
  }
}

# Associating Route table to Public Subnet
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_r
}



#Creating Private Route Table

resource "aws_private_subnet" "private_rt" {
  vpc_id = aws.vpc.terraf_practice.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_private_subnet.id
  }
}
