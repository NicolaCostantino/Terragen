resource "aws_security_group" "service_security_group" {
  ingress {
    # Allowing any ingoing traffic from port
    from_port = 0
    # Allowing any ingoing traffic to port
    to_port   = 0
    # Allowing any ingoing protocol
    protocol  = "-1"
    # Only allowing traffic in from the load balancer security group
    security_groups = var.ingress_security_groups
  }

  egress {
    # Allowing any outgoing traffic from port
    from_port   = 0
    # Allowing any outgoing traffic to port
    to_port     = 0
    # Allowing any outgoing protocol
    protocol    = "-1" 
    # Allowing traffic out to all IP addresses
    cidr_blocks = ["0.0.0.0/0"]
  }
}