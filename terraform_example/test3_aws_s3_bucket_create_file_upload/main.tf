provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mys3buckettest1234" {
  bucket = "mys3buckettest1234"
  acl = "private"

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.mys3buckettest1234.id
  key = "index.html"
  source = "index.html"
  acl = "private"
}

output "bucket_url" {
  value = "http://${aws_s3_bucket.mys3buckettest1234.website_endpoint}"
}

