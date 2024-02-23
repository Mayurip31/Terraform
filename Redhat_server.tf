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

resource "aws_instance" "server" {
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.micro"

  tags = {
    Name = "RedHat-Server"
  }
}