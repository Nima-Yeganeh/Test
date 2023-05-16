provider "aws" {
  region = "sa-east-1"
}

resource "aws_ebs_volume" "example_volume" {
  availability_zone = "sa-east-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-volume"
  }
}

