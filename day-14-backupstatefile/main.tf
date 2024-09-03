provider "aws" {
  
}
resource "aws_instance" "test1" {
    ami = "ami-0d07675d294f17973"
    instance_type = "t2.micro"
    availability_zone = "ap-southeast-1a"
    key_name = "project"
}