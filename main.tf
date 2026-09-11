# S3 bucket managed by Terraform

resource "aws_s3_bucket" "data_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "dev"
    Project     = "terraform-s3-demo"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "data_bucket_versioning" {
  bucket = aws_s3_bucket.data_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}