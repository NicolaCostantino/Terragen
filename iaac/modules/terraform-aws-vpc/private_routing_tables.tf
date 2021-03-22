resource "aws_route_table" "private" {
  count   = length(var.subnet_private)

  vpc_id  = aws_vpc.main.id

  tags    = {
    Name        = "${var.name}-routing-table-private-${format("%03d", count.index+1)}"
    Environment = var.environment
    Terraform   = "true"
  }
}
 
resource "aws_route" "private" {
  count                  = length(compact(var.subnet_private))

  route_table_id         = element(aws_route_table.private.*.id, count.index)
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = element(aws_nat_gateway.main.*.id, count.index)
}
 
resource "aws_route_table_association" "private" {
  count          = length(var.subnet_private)

  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = element(aws_route_table.private.*.id, count.index)
}