terraform {
  backend "s3" {
    bucket = "eks-cluster-statefile "  # The S3 bucket to store the state file
    key    = "Terraform/terraform.tfstate"  # The path within the bucket (e.g., a folder structure)
    region = "ap-south-1"  # The AWS region where the bucket exists
    dynamodb_table = "terraform-lock-table"  # DynamoDB table for locking
    encrypt = true  # Encrypt the state file
    acl      = "bucket-owner-full-control"  # Permissions for the state file
  }
}
