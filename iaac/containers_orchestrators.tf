module "containers_orchestrator" {
  source                    = "./modules/terraform-aws-ecs"

  # General
  name                      = "hello"
  environment               = var.general_environment
  region                    = var.region

  # Tasks
  container_cpu             = var.container_cpu
  container_memory          = var.container_memory
  container_image_name      = var.container_image_name
  container_image_tag       = var.container_image_tag
  container_environment     = var.container_environment
  container_port            = var.container_port
  container_secrets         = var.container_secrets
  # Security Groups
  vpc_id                    = module.network.id
  # Services
  service_desired_count     = var.service_desired_count
  subnets                   = module.network.private_subnets_ids
  aws_alb_target_group_arn  = module.load_balancer.aws_lb_target_group_arn
}