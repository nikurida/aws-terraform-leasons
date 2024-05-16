terraform {
  required_version = "1.8.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "terraform"
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {

  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  tags = {
    Description = "Stores terraform remote state files"
    ManagedBy   = "Terraform"
    Owner       = "Ricardo"
    CreatedAt   = "2024-05-15"
  }

}

resource "aws_s3_bucket_versioning" "versioning_remote-state" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_arn" {
  value = aws_s3_bucket.remote-state.arn
}
