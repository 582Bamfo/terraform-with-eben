variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "vcristian"
}

variable "tags_iam" {
  description = "Common tags for AWS resources"
  type        = map(string)

  default = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Project     = "terraform-learning"
  }
}
