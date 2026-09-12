# Allow AWS Glue crawler to access the Glue Data Catalog

resource "aws_iam_policy" "glue_catalog_access" {
  name        = "glue-catalog-access-policy"
  description = "Allows AWS Glue crawler to access the Glue Data Catalog"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "glue:GetDatabase",
          "glue:GetDatabases",
          "glue:GetTable",
          "glue:GetTables",
          "glue:CreateTable",
          "glue:UpdateTable",
          "glue:GetPartition",
          "glue:GetPartitions",
          "glue:CreatePartition",
          "glue:UpdatePartition",
          "glue:BatchCreatePartition",
          "glue:BatchDeletePartition"
        ]

        Resource = "*"
      }
    ]
  })
}

# Attach Glue Data Catalog permissions to the Glue role

resource "aws_iam_role_policy_attachment" "glue_catalog_access_attachment" {
  role       = aws_iam_role.glue_s3_role.name
  policy_arn = aws_iam_policy.glue_catalog_access.arn
}