output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_sub_id" {
  value = aws_subnet.public[0].id

}
