
variable "aws_s3_bucket" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "s3-bucket-eben2026-ter-lesson"
}


variable "s3_tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)

  default = {
    Environment = "dev"
    ManagedBy   = "Terraform"
    Project     = "terraform-learning"
  }
}
