variable "r_aws_s3_bucket" {
  description = "Resource variable for S3 bucket in AWS"
  type              = object ({
    name            = string
  })
  default = {
    name            = "terraform-state-file"
  } 
}

variable "r_aws_dynamodb_table" {
  description = "Resource variable for dyanamodb in AWS"
  type              = object ({
    name            = string
  })
  default = {
    name            = "terraform-state-file-lock"
  } 
}
