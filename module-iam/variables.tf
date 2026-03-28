variable "users" {
  type = list(string)
}

variable "groups" {
  type = list(string)
}

variable "environment" {}

variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
  default = "s3-read-policy"
}

variable "policy_description" {
  description = "Description of the IAM policy"
  type        = string
  default     = "Custom IAM policy"
}