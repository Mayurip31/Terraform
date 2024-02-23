terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region  = "us-east-1"
    
}
resource "aws_s3_bucket" "new" {
  bucket = "webdata"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
