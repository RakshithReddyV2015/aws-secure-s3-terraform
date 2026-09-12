# Allow AWS Glue job to read its script from the Glue assets bucket

resource "aws_iam_policy" "glue_assets_access" {
  name        = "glue-assets-access-policy"
  description = "Allows AWS Glue jobs to read scripts from the Glue assets bucket"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:ListBucket"
        ]

        Resource = "arn:aws:s3:::aws-glue-assets-165795703779-us-east-1"
      },
      {
        Effect = "Allow"

        Action = [
          "s3:GetObject"
        ]

        Resource = "arn:aws:s3:::aws-glue-assets-165795703779-us-east-1/scripts/*"
      }
    ]
  })
}

# Attach Glue assets permissions to the Glue role

resource "aws_iam_role_policy_attachment" "glue_assets_access_attachment" {
  role       = aws_iam_role.glue_s3_role.name
  policy_arn = aws_iam_policy.glue_assets_access.arn
}