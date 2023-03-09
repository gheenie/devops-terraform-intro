resource "aws_s3_bucket" "demo_bucket" {
  bucket_prefix = "infoomics-"
}

resource "aws_s3_object" "demo_object" {
  bucket = aws_s3_bucket.demo_bucket.bucket
  key = "demo.zip"
  source = "${path.module}/demo.zip"
}