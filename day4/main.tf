resource "aws_s3_bucket" "name" {
  bucket = "pramod-terraform"

}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.name.id
  versioning_configuration {
    status ="Enabled"
}
}

  
