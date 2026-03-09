resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type

  metadata_options {
       http_endpoint          = "enabled"
       http_tokens             = "required"
       instance_metadata_tags = "enabled"
  }
  tags = var.tags
}
