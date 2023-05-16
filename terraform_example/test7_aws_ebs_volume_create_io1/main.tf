provider "aws" {
  region = "sa-east-1"
}

resource "aws_ebs_volume" "example_volume" {
  availability_zone = "sa-east-1a"
  size              = 16000
  type              = "io1"
  iops              = 64000
  tags = {
    Name = "example-volume"
  }
}

