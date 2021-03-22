resource "aws_subnet" "private" {
  count             = length(var.subnet_private)

  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.subnet_private, count.index)
  availability_zone = element(var.availability_zones, count.index)
  
  tags              = {
    Name        = "${var.name}-private-subnet-${var.environment}-${format("%03d", count.index+1)}"
    Environment = var.environment
    Terraform   = "true"
  }
}