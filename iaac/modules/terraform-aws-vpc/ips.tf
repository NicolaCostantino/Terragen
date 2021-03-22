resource "aws_eip" "nat" {
  count = length(var.subnet_private)
  
  vpc   = true

  tags  = {
    Name        = "${var.name}-eip-${var.environment}-${format("%03d", count.index+1)}"
    Environment = var.environment
    Terraform   = "true"
  }
}