resource "aws_lb" "name" {
  name               = "myALB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.SG.id]
  subnets            = [aws_subnet.public.id, aws_subnet.public2.id]
  tags = {
    Name = "myALB"
  }
}
