provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

output "instance_private_ip_address" {
  value = aws_instance.example.private_ip
  description = "The private IP address of the main server instance."
}

output "instance_public_ip_address" {
  value = aws_instance.example.public_ip
  description = "The public IP address of the main server instance."
}

