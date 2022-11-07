terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region  = "us-east-1"

}

resource "aws_instance" "app_server" {
  ami           = "ami-0149b2da6ceec4bb0"
  instance_type = "t2.micro"
  key_name = "estudo"
#  user_data = <<-EOF
#                #!/bin/bash
#                cd /home/ubuntu
#                echo "<h1> By Terraform </h1>" > index.html
#                nohup busybox httpd -f -p 8080 &
#                 EOF
  tags = {
    Name = "Terraform AWS"
  }
}

