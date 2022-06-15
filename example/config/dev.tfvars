#####################################
# Development Environment Variables #
#####################################
environment = "dev"
owner       = "data-engineering"
project     = "data-core"

# Standard Network
vpc_cidr             = "10.0.0.0/16"
enable_dns_support   = true
public_subnet_cidrs  = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidrs = ["10.0.50.0/24", "10.0.51.0/24"]
availability_zones   = ["ap-southeast-2a", "ap-southeast-2b"]
