resource "aws_internet_gateway" "main" {
  vpc_id  = aws_vpc.main.id

  tags    = {
    Name        = "${var.name}-vpc-${var.environment}"
    Environment = var.environment
    Terraform   = "true"
  }
}