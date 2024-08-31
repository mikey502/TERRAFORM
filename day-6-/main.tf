
resource "aws_instance" "copy" {
    ami = "ami-022ce6f32988af5fa"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1"
    key_name = "mykey"
    
  tags = {
    Name = "copy-1"
  }
}
