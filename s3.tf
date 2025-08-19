resource "aws_s3_bucket" "static" {
  bucket = "terraform-banking-static-${random_id.bucket_id.hex}"
  acl    = "public-read"

  tags = {
    Name = "Banking-App-S3"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
