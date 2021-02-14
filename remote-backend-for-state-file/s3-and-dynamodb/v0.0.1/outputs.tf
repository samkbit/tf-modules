output "s3_bucket_arn" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "AWS S3 bucket ARN for Terraform state"
}

output "dynamodb_table_name" {
  value       = aws_dynamodb_table.terraform_locks.name
  description = "AWS DynamoDB table name for Terraform locks"
}
