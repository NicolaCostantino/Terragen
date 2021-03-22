#
# General
#

# Required

variable "name" {
  # description = "Specifying the number of containers to be deployed"
  type        = string
}

variable "environment" {
  # description = "Specifying the number of containers to be deployed"
  type        = string
}

#
# VPC
#

# Optional

variable "vpc_main_cidr" {
  description = "Specify an IPv4 CIDR block for the VPC. The smallest CIDR block you can specify is /28, and the largest is /16."
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}


#
# Subnets
#

# Common

variable "availability_zones" {
  description = "A comma-separated list of availability zones, defaults to all AZ of the region, if set to something other than the defaults, both private_subnets and public_subnets have to be defined as well"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

# Private Subnet

# Optional

variable "subnet_private" {
  description = "A list of CIDRs for private subnets in your VPC, must be set if the cidr variable is defined, needs to have as many elements as there are availability zones"
  type        = list(string)
  default     = ["10.0.0.0/20", "10.0.32.0/20", "10.0.64.0/20"]
}

# Public Subnet

# Optional

variable "subnet_public" {
  description = "A list of CIDRs for public subnets in your VPC, must be set if the cidr variable is defined, needs to have as many elements as there are availability zones"
  type        = list(string)
  default     = ["10.0.16.0/20", "10.0.48.0/20", "10.0.80.0/20"]
}