resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "vishnu vpc"
    }
}

resource "aws_internet_gateway" "name" {
    vpc_id = aws_vpc.dev.id
  
}

resource "aws_subnet" "dev" {
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.dev.id
    map_public_ip_on_launch = true
  
}

resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.dev.id
  }
  
}

resource "aws_route_table_association" "dev" {
    route_table_id = aws_route_table.dev.id
    subnet_id = aws_subnet.dev.id
    
  
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  vpc_id      = aws_vpc.dev.id
  tags = {
    Name = "dev_sg"
  }
 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }


  }