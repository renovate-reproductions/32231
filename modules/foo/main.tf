resource "aws_s3_bucket" "foo" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
    Environment = var.env
  }
}
