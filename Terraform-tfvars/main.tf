output "my_favorite_number" {
  value = var.my_favorite_number

}

output "name" {
  value = var.name
}

locals {
  my_even_numbers = [for i in var.my_list : i if i % 2 == 0]
}

output "my_even_numbers" {
  value = local.my_even_numbers

}

provider "aws" {
  region = "eu-west-1"

}

#resource "aws_instance" "this" {
# count         = var.my_number_of_instances
#  instance_type = "t2.micro"
#  ami           = "something_random"
#}

resource "aws_instance" "this" {
  for_each      = var.my_instances
  instance_type = each.value.instance_type
  ami           = each.value.ami

}

resource "aws_instance" "this2" {
  count         = var.create_instance ? 1 : 0
  instance_type = "t2.micro"
  ami           = "something_random"
}


