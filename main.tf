terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "ap-south-1"
  access_key = ""
  secret_key = ""
 }
resource "aws_instance" "web" {
  ami           = "ami-002f6e91abff6eb91"
  instance_type = var.instance_type
  tags  = {
    Name  = "Raj"
  }
}
