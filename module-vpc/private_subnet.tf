# Creating Private subnet
resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.terraf_practice
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "private-subnet"
  }
}
