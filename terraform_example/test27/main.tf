provider "aws" {
  region = "us-east-1"
}

resource "aws_prometheus_workspace" "example" {
  alias = "example"

  tags = {
    Environment = "production"
  }

  logging_configuration {
    log_group_arn = "${aws_cloudwatch_log_group.example.arn}:*"
  }

}

resource "aws_cloudwatch_log_group" "example" {
  name = "example"
}
