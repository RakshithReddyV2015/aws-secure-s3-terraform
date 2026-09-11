# IAM policy for controlled access to the S3 bucket

resource "aws_iam_policy" "s3_data_access" {
  name        = "s3-data-access-policy"
  description = "Allows controlled access to the Terraform-managed S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:ListBucket"
        ]

        Resource = aws_s3_bucket.data_bucket.arn
      },
      {
        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:PutObject"
        ]

        Resource = "${aws_s3_bucket.data_bucket.arn}/*"
      }
    ]
  })
}