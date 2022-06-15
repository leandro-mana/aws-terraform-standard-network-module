################################
# Network Variables Definition #
################################
variable "environment" {
  description = "The name of the environment"
}

variable "project" {
  description = "The name of the project"
  type        = string

}

variable "tags" {
  description = "The tags for the resource"
  type        = map(string)
}

variable "vpc_cidr" {
  description = "VPC cidr block. Example: 10.0.0.0/16"
  type        = string
}

variable "enable_dns_support" {
  description = "Flag to Enable/Disable DNS support in the VPC"
  type        = bool
  default     = false
}

variable "enable_dns_hostnames" {
  description = "Flag to Enable/Disable Hostnames in the VPC"
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

variable "destination_cidr_block" {
  description = "Specify all traffic to be routed either trough Internet Gateway or NAT to access the internet"
  default     = "0.0.0.0/0"
  type        = string
}
