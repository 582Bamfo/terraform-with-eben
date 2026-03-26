variable "group_name" {
  description = "Name of the IAM group"
  type        = string
  default     = "prod"
}

variable "policy_arn" {
  description = "Policy to attach to the group"
  type        = string
}

variable "tags" {
  description = "Tags for IAM group"
  type        = map(string)
  default     = {}
}
