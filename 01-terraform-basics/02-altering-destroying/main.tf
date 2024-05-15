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

resource "aws_s3_bucket" "my-test-bucket" {

  bucket = "myterraformbucket1337123123123231231"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Ricardo"
    UpdatedAt   = "2024-05-14"
  }
}
