resource "aws_lb" "main" {
  # Name of the load balancer
  name                = "${var.name}-alb-${var.environment}"

  load_balancer_type  = "application"
  # Referencing the default subnets
  subnets             = var.subnets
  # Referencing the security group
  security_groups     = [aws_security_group.alb.id]

  tags                = {
    Name = "${var.name}-alb-${var.environment}"
    Environment = var.environment
    Terraform   = "true"
  }
}