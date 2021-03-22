module "load_balancer" {
  source = "./modules/terraform-aws-elb"

  # General
  name = "hello"
  environment = var.general_environment
  
  # Common
  vpc_id = module.network.id
  # Application Load Balancer
  subnets = module.network.public_subnets_ids
  # Listeners
  alb_tls_cert_arn = ""
  # Target Group
  health_check_path = var.health_check_path
  # Security Group
  # In module: security_groups = var.security_groups
}