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

variable "subnet_ids" {
  description = "List of subnets in which to place the NAT Gateway"
  type        = list(any)
}

variable "subnet_count" {
  description = "Amount of the subnet_ids"
  type        = number
}
