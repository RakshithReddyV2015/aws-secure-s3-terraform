# Allow Snowflake to read processed data from S3

resource "aws_iam_policy" "snowflake_s3_access" {
  name        = "snowflake-s3-access-policy"
  description = "Allows Snowflake to read processed customer data from S3"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:GetObjectVersion"
        ]

        Resource = "${aws_s3_bucket.data_bucket.arn}/processed/*"
      },
      {
        Effect = "Allow"

        Action = [
          "s3:ListBucket",
          "s3:GetBucketLocation"
        ]

        Resource = aws_s3_bucket.data_bucket.arn

        Condition = {
          StringLike = {
            "s3:prefix" = [
              "processed/*"
            ]
          }
        }
      }
    ]
  })
}