env           = "dev"
instance_type = "t3.small"
zone_id       = "Z03550633TO0Y0IZ4C5ZP"

# VPC
vpc_cidr_block         = "10.10.0.0/16"
default_vpc_cidr       = "172.31.0.0/16"
default_vpc_id         = "vpc-0c0512145af7b05ce"
default_route_table_id = "rtb-0b55b2a100efd10c3"

frontend_subnets   = ["10.10.0.0/24", "10.10.1.0/24"]
backend_subnets    = ["10.10.2.0/24", "10.10.3.0/24"]
db_subnets         = ["10.10.4.0/24", "10.10.5.0/24"]
public_subnets     = ["10.10.6.0/24", "10.10.7.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]
bastion_nodes      = ["172.31.83.206/32"]
prometheus_nodes   = ["172.31.89.157/32"]
kms_key_id          = "arn:aws:kms:us-east-1:235494793390:key/d91bbef7-3841-40c1-b9a2-f7f5e92ef92a"
certificate_arn     = "arn:aws:acm:us-east-1:235494793390:certificate/52ca4c0e-164c-4bbc-9276-82149fdf2e72"

rds = {
  main = {
    allocated_storage   = 20
    engine_version      = "5.7.44"
    family              = "mysql5.7"
    instance_class      = "db.t3.micro"
    skip_final_snapshot = true
    storage_type        = "gp3"
  }
}

