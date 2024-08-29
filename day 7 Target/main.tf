resource "aws_lb_target_group" "test" {
  name     = "tg-day7"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-098c95ea611d98961"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}