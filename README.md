# Terraform Module: VPC Flow Logs to S3

## Overview

This Terraform module enables **VPC Flow Logs** for a specified VPC and stores the logs in an **S3 bucket**. The logs help in monitoring network traffic, troubleshooting connectivity issues, and enhancing security by capturing all network flows within the VPC.

## Features

- ✅ Creates **VPC Flow Logs** for a specified VPC.  
- ✅ Stores logs in an **S3 bucket**.  
- ✅ Configures an **S3 bucket policy** to allow AWS VPC Flow Logs to write to the bucket.  
- ✅ Supports traffic filtering options: **ALL, ACCEPT, REJECT**.  
- ✅ Fully configurable via **Terraform variables**.  

## Usage

To use this module, include it in your Terraform configuration and provide the necessary variables.

### Example Configuration

```hcl
module "vpc_flow_logs" {
  source         = "./path-to-this-module"
  vpc_id         = "vpc-12345678"
  s3_bucket_name = "my-flow-logs-bucket"
  s3_bucket_arn  = "arn:aws:s3:::my-flow-logs-bucket"
  flow_log_name  = "my-vpc-flow-logs"
  traffic_type   = "ALL"
}
```

## Variables

| Name            | Description                                        | Type   | Default |
|----------------|----------------------------------------------------|--------|---------|
| `vpc_id`       | The ID of the VPC where flow logs are enabled.    | string | n/a     |
| `s3_bucket_name` | The name of the S3 bucket to store logs.        | string | n/a     |
| `s3_bucket_arn`  | The ARN of the S3 bucket.                       | string | n/a     |
| `flow_log_name`  | Name assigned to the VPC Flow Log.              | string | n/a     |
| `traffic_type`   | Traffic type to capture (`ALL`, `ACCEPT`, `REJECT`). | string | `ALL`   |

## Outputs

| Name                | Description                                  |
|--------------------|------------------------------------------|
| `flow_log_id`     | The ID of the created VPC Flow Log.      |
| `flow_log_name`   | The Name of the VPC Flow Log.            |
| `s3_bucket_policy_id` | The ID of the applied S3 bucket policy. |
| `vpc_id`          | The VPC ID for which flow logs are enabled. |
| `s3_bucket_arn`   | The ARN of the S3 bucket storing flow logs. |

## Why This Module?

🔹 **Security & Compliance** – Helps organisations meet security and auditing requirements by logging all network flows.  
🔹 **Troubleshooting** – Identifies unexpected traffic flows and detects connectivity issues.  
🔹 **Scalability** – Can be applied to multiple VPCs with minimal configuration changes.  

## Author

This module was created by Michael Wilson.

## License

This module is open-source and can be modified as needed.
