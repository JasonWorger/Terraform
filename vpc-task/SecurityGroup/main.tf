resource "aws_security_group" "aws_webserver_sg" {
  name        = var.name
  description = "Allow SSH"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.inbound_port
    protocol    = "tcp"
    to_port     = var.inbound_port
    cidr_blocks = [var.open_internet]
  }

  egress {
    from_port   = var.outbound_port
    protocol    = "-1"
    to_port     = var.outbound_port
    cidr_blocks = [var.open_internet]
  }

}