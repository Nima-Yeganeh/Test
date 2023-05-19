provider "aws" {
  region = "us-east-1"
}

resource "aws_prometheus_workspace" "example" {
  alias = "example"

  tags = {
    Environment = "production"
  }
}
