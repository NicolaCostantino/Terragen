#
# General
#

general_environment   = "sandbox"


#
# AWS Connection & Authentication
#

region                = "eu-central-1"


#
# Load Balancer
#

health_check_path     = "/"


#
# Containers Orchestrator
#

container_cpu         = 256
container_memory      = 512
container_image_name  = "nginxdemos/hello"
container_image_tag   = "latest"
container_environment = []
container_port        = 80
container_secrets     = []
service_desired_count = 1