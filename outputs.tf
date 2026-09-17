output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.data_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.data_bucket.arn
}

output "glue_s3_role_arn" {
  description = "ARN of the IAM role used by AWS Glue"
  value       = aws_iam_role.glue_s3_role.arn
}

output "snowflake_s3_role_arn" {
  description = "ARN of the IAM role used by Snowflake to access S3"
  value       = aws_iam_role.snowflake_s3_role.arn
}