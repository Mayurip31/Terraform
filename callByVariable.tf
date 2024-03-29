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
  ami           = var.ami_id
  instance_type = var.type
   
   tags = {
     "Name" ="mayuri" 
   }


}
resource "aws_s3_bucket" "example" {
  bucket = var.s3_bucket

  tags = {
    "Name" = "MyBucket"
  }

}

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  
  tags = {
    "Name" ="My vpc" 
  }
}
variable "ami_id" {
    default = "ami-0c7217cdde317cfec"
    description = "launch instnce"
  } 

variable "type" {
  default = "t2.micro"
  description = "Instance type"
}


variable "s3_bucket" {
  default = "hefklpo"
  
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc CIDR"
  
  
}










