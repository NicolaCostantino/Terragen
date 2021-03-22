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
# Common
#

variable "vpc_id" {
  # description = "Specifying the number of containers to be deployed"
  type        = string
}


#
# Application Load Balancer
#

# Required

variable "subnets" {
  # description = "Specifying the number of containers to be deployed"
  type        = list(string)
}


#
# Listeners
#

variable "alb_tls_cert_arn" {
  # description = "Specifying the number of containers to be deployed"
  type        = string
}


#
# Target group
#

variable "health_check_path" {
  # description = "Specifying the number of containers to be deployed"
  type        = string
}


#
# Security Group
#