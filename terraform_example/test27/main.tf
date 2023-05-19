provider "aws" {
  region = "us-east-1"
}

resource "aws_prometheus_workspace" "example" {
  alias = "example"

  tags = {
    Environment = "production"
  }
}

resource "aws_cloudwatch_log_group" "example" {
  name = "example"
}

resource "aws_prometheus_workspace" "example" {
  logging_configuration {
    log_group_arn = "${aws_cloudwatch_log_group.example.arn}:*"
  }
}
