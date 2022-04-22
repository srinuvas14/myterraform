resource "aws_s3_bucket" "b1" {
  bucket = "hsbc54321"
}


resource "aws_s3_bucket_policy" "allow_accces" {
  bucket = aws_s3_bucket.b1.id
  policy = file("./bpolicy.json")
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.b1.id
  versioning_configuration {
    status = "Enabled"
  }
}