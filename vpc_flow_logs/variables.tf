variable "s3_bucket_name" {
  description = "The name of the S3 bucket for storing flow logs"
  type        = string
}

variable "s3_bucket_arn" {
  description = "The ARN of the S3 bucket for storing flow logs"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC for which flow logs are created"
  type        = string
}

variable "traffic_type" {
  description = "The type of traffic to capture (ALL, ACCEPT, REJECT)"
  type        = string
  default     = "ALL"
}

variable "flow_log_name" {
  description = "The name of the VPC Flow Log"
  type        = string
}
