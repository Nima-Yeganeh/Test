provider "aws" {
  region = "us-east-1"
}

resource "aws_prometheus_workspace" "example_workspace" {
  name           = "example-workspace"
  retention_days = 30
}
