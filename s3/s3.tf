resource "aws_s3_bucket" "dev" {
  bucket = var.s3_bucket

  tags = var.s3_tags
}
