terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQGYBP4FFGBHSR5KZ"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.micro"

  tags = {
    Name = "first_ec2"
  }
}

