provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_ebs_volume" "example_gb2" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
}

resource "aws_ebs_volume" "example_gb3" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
}

resource "aws_ebs_volume" "example_io1" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
}

resource "aws_ebs_volume" "example_io2" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
}

resource "aws_ebs_volume" "example_st1" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
}

