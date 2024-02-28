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
  ami           = "ami_id"
  instance_type = "type"

  tags = {
    Name = "Mayuri"
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












