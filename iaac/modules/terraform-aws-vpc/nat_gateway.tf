resource "aws_nat_gateway" "main" {
  count         = length(var.subnet_private)

  allocation_id = element(aws_eip.nat.*.id, count.index)
  subnet_id     = element(aws_subnet.public.*.id, count.index)
  depends_on    = [aws_internet_gateway.main]

  tags          = {
    Name        = "${var.name}-nat-${var.environment}-${format("%03d", count.index+1)}"
    Environment = var.environment
    Terraform   = "true"
  }
}