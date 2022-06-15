###########
# Globals #
###########
variable "environment" {
  description = "The name of the environment"
  type        = string
}

variable "project" {
  description = "The name of the project"
  type        = string
}

variable "owner" {
  description = "The owner of the project"
  type        = string
}

variable "aws_region" {
  description = "The AWS Region"
  type        = string
  default     = "ap-southeast-2"
}

##################
# network module # 
##################
variable "vpc_cidr" {
  description = "VPC cidr block. Example: 10.0.0.0/16"
  type        = string
}

variable "enable_dns_support" {
  description = "Flag to Enable/Disable DNS support in the VPC"
  type        = bool
  default     = false
}

variable "private_subnet_cidrs" {
  description = "List of private cidrs, for every az one required, i.e. 10.0.0.0/24 and 10.0.1.0/24"
  type        = list(any)
}

variable "public_subnet_cidrs" {
  description = "List of public cidrs, for every az one required, i.e. 10.0.0.0/24 and 10.0.1.0/24"
  type        = list(any)
}

variable "availability_zones" {
  description = "List of availability zones, i.e. ap-southeast-2a and ap-southeast-2b"
  type        = list(any)
}
