#
# General
#

variable "name" {
  description = "Unique name to be used on all the resources as identifier"
  type        = string
}

variable "environment" {
  # description = "Specifying the number of containers to be deployed"
  type        = string
}

variable "region" {
  # description = "Specifying the number of containers to be deployed"
  type        = string
}


#
# Tasks
#

variable "container_cpu" {
  description = "The number of cpu units used by the task"
  type        = number
}

variable "container_memory" {
  description = "The amount (in MiB) of memory used by the task"
  type        = number
}

variable "container_image_name" {
  description = "Docker image name to be launched"
  type        = string
}

variable "container_image_tag" {
  description = "Docker image tag to be launched"
  type        = string
}

variable "container_environment" {
  description = "The container environmnent variables"
  type        = list
}

variable "container_port" {
  description = "Port of container"
  type        = number
}

variable "container_secrets" {
  description = "The container secret environmnent variables"
  type        = list
}


#
# Security Groups
#

variable "vpc_id" {
  description = "ID of the VPC for the ECS task"
  type        = string
}


#
# Services
#

variable "service_desired_count" {
  description = "Number of services running in parallel"
  type        = number
}

variable "subnets" {
  # description = "Number of services running in parallel"
  type        = list(string)
}

variable "aws_alb_target_group_arn" {
  description = "ARN of the alb target group"
  type        = string
}