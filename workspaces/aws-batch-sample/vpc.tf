resource "aws_security_group" "aws_batch_security_group" {
  name = "aws_batch_compute_environment_security_group"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_default_vpc" "default" {}

data "aws_subnet_ids" "default" {
  vpc_id = aws_default_vpc.default.id
}
