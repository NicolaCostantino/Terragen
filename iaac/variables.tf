#
# General
#

variable "general_environment" {
  description = "A string used to tag the resources with the environment"
  type        = string
  default     = "bf-chipdl-sandbox"
}


#
# AWS Connection & Authentication
#

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}


#
# Load Balancer
#

variable "health_check_path" {
  description = "Path of the healthcheck for the load balancer"
  type        = string
}


#
# Containers Orchestrator
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

variable "service_desired_count" {
  description = "Number of services running in parallel"
  type        = number
}