resource "aws_instance" "vishnu" {
    ami= "ami-0ac0f5ac9a9b402fa"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.dev.id
    key_name = "var.linux"
        tags = {
      Name = "vishnu-ec2"
    }
}