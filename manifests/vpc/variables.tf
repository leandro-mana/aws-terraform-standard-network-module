variable "environment" {
  description = "The name of the environment"
  type        = string
}

variable "project" {
  description = "The name of the project"
  type        = string
}

variable "tags" {
  description = "The tags for the resource"
  type        = map(string)
}

variable "cidr" {
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
