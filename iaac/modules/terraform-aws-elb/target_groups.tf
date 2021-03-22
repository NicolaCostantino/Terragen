resource "aws_lb_target_group" "main" {
  name        = "${var.name}-tg-alb-${var.environment}"

  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  # Referencing the default VPC
  vpc_id      = var.vpc_id

  health_check {
    healthy_threshold   = "3"
    interval            = "30"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    path                = var.health_check_path
    unhealthy_threshold = "2"
  }

  depends_on = [
    aws_lb.main,
  ]
  tags = {
    Name        = "${var.name}-tg-${var.environment}"
    Environment = var.environment
    Terraform   = "true"
  }
}