resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "project_bucket" {
  bucket        = "${var.project_name}-artifacts-${random_id.bucket_suffix.hex}"
  force_destroy = true

  tags = {
    Name        = "${var.project_name}-artifacts"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.project_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}