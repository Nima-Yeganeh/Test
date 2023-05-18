provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

