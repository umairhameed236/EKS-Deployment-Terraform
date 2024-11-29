terraform {
  backend "s3" {
    bucket = "terraformstaterk"           # The name of the S3 bucket
    key    = "terraform/state/terraform.tfstate"
    
region = "us-east-1"                  # The AWS region where the bucket is located
  }
}
