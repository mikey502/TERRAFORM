resource "aws_instance" "test1" {
    ami = "ami-08ee1453725d19cdb"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "mykey"
}