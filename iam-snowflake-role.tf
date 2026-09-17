# IAM role that Snowflake will assume to access S3

resource "aws_iam_role" "snowflake_s3_role" {
  name = "snowflake-s3-access-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          AWS = "arn:aws:iam::878155244385:user/91o72000-s"
        }

        Action = "sts:AssumeRole"

        Condition = {
          StringEquals = {
            "sts:ExternalId" = "RT20400_SFCRole=4_giwnq51qcFiS8Xc3+YUrTRk3Q6U="
          }
        }
      }
    ]
  })
}