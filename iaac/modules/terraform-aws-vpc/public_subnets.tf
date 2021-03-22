resource "aws_subnet" "public" {
  count                   = length(var.subnet_public)
  
  vpc_id                  = aws_vpc.main.id
  cidr_block              = element(var.subnet_public, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  
  tags              = {
    Name        = "${var.name}-public-subnet-${var.environment}-${format("%03d", count.index+1)}"
    Environment = var.environment
    Terraform   = "true"
  }
}