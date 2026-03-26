variable "region" {}
variable "environment" {}
variable "vpc_cidr" {}
variable "public_subnets" {
  type = list(string)
}
variable "private_subnets" {
  type = list(string)
}
variable "instance_type" {}
variable "ami_id" {}
variable "bucket_name" {}
variable "iam_users" {
  type = list(string)
}

variable "groups" {
  type = list(string)

}

variable "subnet_id" {}

variable "tags" {
  
}