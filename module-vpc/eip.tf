# Creating a NAT Gateway for private subnet internet access
# Elastic Gateway
resource "aws_eip" "nat_eip" {
  domain = "vpc"
}
