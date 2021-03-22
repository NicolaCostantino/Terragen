resource "aws_vpc" "main" {
  cidr_block            = var.vpc_main_cidr
  enable_dns_support    = true
  enable_dns_hostnames  = true
  
  tags        = {
    Name        = "${var.name}-vpc-${var.environment}"
    Environment = var.environment
    Terraform   = "true"
  }
}