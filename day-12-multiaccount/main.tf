provider "aws" {
    profile = "default"
    alias = "default"
}

provider "aws" {
    profile = "account2"
    alias = "account2"
    
  
}

resource "aws_s3_bucket" "name" {
    bucket = "mumbai-hyd-bucket-revanthhh"
    provider = aws.account2
  
}
resource "aws_s3_bucket" "test" {
    bucket = "us-hyd-bucket-vishnuuu-star"
  
}