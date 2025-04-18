terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
resource "random_string" "hostname_prefix" {
  length  = 3
  upper   = false
  special = false
  number  = false
}

resource "random_integer" "hostname_suffix" {
  min = 100000
  max = 999999
}
provider "aws" {
  region  = "ap-south-1"
  access_key = ""
  secret_key = ""
 }
resource "aws_instance" "web" {
  ami           = "ami-002f6e91abff6eb96"
  instance_type = "t2.micro"
  tags  = {
    Name  = "Rajesh"
  }
}
