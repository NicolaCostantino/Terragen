# Redirect to https listener
resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main.id
  port              = 80
  protocol          = "HTTP"

  # default_action {
  #   type = "redirect"

  #   redirect {
  #     port        = 443
  #     protocol    = "HTTPS"
  #     status_code = "HTTP_301"
  #   }
  # }

  default_action {
    target_group_arn = aws_lb_target_group.main.id
    type             = "forward"
  }
}

# Redirect traffic to target group
# resource "aws_lb_listener" "https" {
#     load_balancer_arn = aws_lb.main.id
#     port              = 443
#     protocol          = "HTTPS"

#     ssl_policy        = "ELBSecurityPolicy-2016-08"
#     certificate_arn   = var.alb_tls_cert_arn

#     default_action {
#       target_group_arn = aws_lb_target_group.main.id
#       type             = "forward"
#     }
# }