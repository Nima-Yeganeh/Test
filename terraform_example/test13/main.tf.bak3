provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}
