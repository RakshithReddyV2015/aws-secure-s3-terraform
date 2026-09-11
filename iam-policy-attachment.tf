# Attach the S3 permissions policy to the Glue IAM role

resource "aws_iam_role_policy_attachment" "glue_s3_policy_attachment" {
  role       = aws_iam_role.glue_s3_role.name
  policy_arn = aws_iam_policy.s3_data_access.arn
}