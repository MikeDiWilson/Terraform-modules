
# Create the VPC Flow Log
resource "aws_flow_log" "vpc_flow_log" {
  log_destination      = "${var.s3_bucket_arn}/vpcflowlogs/"  # Set the path to the subfolder in the S3 bucket
  log_destination_type = "s3"                               # Specify 's3' as the destination type
  traffic_type         = var.traffic_type                   # Type of traffic to capture (ALL, ACCEPT, REJECT)
  vpc_id               = var.vpc_id                         # VPC ID where the flow logs should be generated

    tags = {
      Name = var.flow_log_name  # Assign the name via tags
    }

}

# S3 Bucket Policy to Allow Flow Logs Delivery
resource "aws_s3_bucket_policy" "flow_log_bucket_policy" {
  bucket = var.s3_bucket_name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = {
          Service = "vpc-flow-logs.amazonaws.com"
        },
        Action    = "s3:PutObject",
        Resource  = "${var.s3_bucket_arn}/vpcflowlogs/*"  # Direct the logs to the vpcflowlogs subfolder
      }
    ]
  })
}
