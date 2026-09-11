# IAM role that can be assumed by AWS Glue

resource "aws_iam_role" "glue_s3_role" {
  name = "glue-s3-access-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "glue.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}