
output "flow_log_id" {
  description = "The ID of the created VPC Flow Log"
  value       = aws_flow_log.vpc_flow_log.id
}

output "flow_log_name" {
  description = "The Name of the VPC Flow Log"
  value       = aws_flow_log.vpc_flow_log.tags["Name"]  # Access the "Name" tag
}

output "s3_bucket_policy_id" {
  description = "The ID of the applied S3 bucket policy for flow logs"
  value       = aws_s3_bucket_policy.flow_log_bucket_policy.id
}

output "vpc_id" {
  description = "The VPC ID for which flow logs are enabled"
  value       = var.vpc_id
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket storing flow logs"
  value       = var.s3_bucket_arn
}
