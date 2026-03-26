region      = "eu-west-1"
environment = "prod"
vpc_cidr    = "10.1.0.0/16"

public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

instance_type = "t2.micro"
ami_id        =          "ami-0d1b55a6d77a0c326"
bucket_name   = "myapp-bucket"
iam_users     = ["prod1", "prod2"]
groups        = ["IT_support"]
tags = {}
subnet_id = "subnet-0123456789abcdef0"
