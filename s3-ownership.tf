# Ensure objects uploaded to the bucket are owned by the bucket owner

resource "aws_s3_bucket_ownership_controls" "data_bucket_ownership" {
  bucket = aws_s3_bucket.data_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}