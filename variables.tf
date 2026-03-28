<<<<<<< HEAD
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
=======
variable "ami" {
  default     = "ami-03446a3af42c5e74e"
  description = "ami for the instance"
  type        = string
  sensitive   = false

}

variable "instance_type" {
  default     = "t2.micro"
  description = "instance type for the EC2 instance"
  type        = string
  sensitive   = false
}

variable "tags" {
  default = {
    Environment = "prod"
    managed_by  = "terraform"
  }
  description = "tags for the resources"
  type        = map(string)
  sensitive   = false

}

variable "iam_group_name" {
  description = "IAM group name"
  type        = string
  default     = "dev"
}

variable "policy_arn" {
  description = "IAM policy to attach"
  type        = string
  default     = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}


variable "iam_user_name" {}
>>>>>>> d8bcde7bf534bf95e247ef501031b61aece37314
