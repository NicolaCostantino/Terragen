resource "aws_ecr_repository" "main" {
  name                  = "${var.name}-ecr-${var.environment}"
  
  image_tag_mutability  = "MUTABLE"

  tags                  = {
    Name        = "${var.name}-ecr-${var.environment}"
    Environment = var.environment
    Terraform   = "true"
  }
}