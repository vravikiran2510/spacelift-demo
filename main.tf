terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
    ami             = "ami-02396cdd13e9a1257"
    instance_type   = "t2.micro"

    tags = {
        Name        = "app-server"
    }
}
