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
    Environment = "qa"
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
