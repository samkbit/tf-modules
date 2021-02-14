resource "aws_s3_bucket" "terraform_state" {
  
  # globally unique name
  bucket = var.r_aws_s3_bucket.name

  # prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }

  # enable versioning so we can see the full revision 
  # history of state files
  versioning {
    enabled = true
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name              = var.r_aws_dynamodb_table.name
  billing_mode      = "PAY_PER_REQUEST"
  hash_key          = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

terraform {
  required_providers {
    aws = {
      source        = "hashicorp/aws"
      version       = "~> 3.0"
    }
  }
}

provider "aws" {
    region          = "us-east-2"
    access_key      = "???????????"
    secret_key      = "??????????????????????????"
}
