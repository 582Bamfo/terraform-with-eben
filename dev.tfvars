<<<<<<< HEAD
region      = "eu-west-1"
environment = "dev"
vpc_cidr    = "10.0.0.0/16"

public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

instance_type = "t2.micro"
ami_id        =          "ami-0d1b55a6d77a0c326"
bucket_name   = "myapp-bucket"
iam_users     = ["dev1", "dev2"]
groups        = ["IT_support", "developers"]
tags = {}
subnet_id = "subnet-0123456789abcdef0"
=======
iam_user_name = "vcristian"
instance_type = "t2.micro"
s3_bucket     = "s3-bucket-lucy-dev"
>>>>>>> d8bcde7bf534bf95e247ef501031b61aece37314
