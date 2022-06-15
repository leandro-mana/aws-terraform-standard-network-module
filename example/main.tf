###################################################
# Main Project Module                             #
# containing configuration and global definitions #
###################################################
# Providers
provider "aws" {
  region = var.aws_region
}

# Common Tags
locals {
  common_tags = {
    Environment = var.environment
    Owner       = var.owner
    Project     = var.project
  }
}

# Modules
module "network" {
  source               = "git::https://github.com/leandro-mana/aws-terraform-standard-network-module.git/?ref=main"
  environment          = var.environment
  project              = var.project
  tags                 = local.common_tags
  vpc_cidr             = var.vpc_cidr
  enable_dns_support   = var.enable_dns_support
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}
