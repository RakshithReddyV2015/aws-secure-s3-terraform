resource "aws_iam_policy" "glue_logging" {
  name        = "glue-logging-policy"
  description = "Allows AWS Glue to write crawler logs to CloudWatch Logs"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]

        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "glue_logging_attachment" {
  role       = aws_iam_role.glue_s3_role.name
  policy_arn = aws_iam_policy.glue_logging.arn
}