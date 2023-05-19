provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

resource "aws_opensearch_service_domain" "example_domain_aws1" {
  domain_name           = "example-domain"
  elasticsearch_version = "7.10"
  instance_type         = "r6gd.12xlarge.search"
  node_count            = 3
  zone_awareness_enabled = true
  ebs_options {
    ebs_enabled = true
    volume_size = 100
  }
  encryption_at_rest {
    enabled = true
  }
  tags = {
    Environment = "production"
    Service     = "search"
  }
  snapshot_options {
    automated_snapshot_start_hour = 23
  }
  advanced_options {
    rest.action.multi.allow_explicit_index = "true"
  }
  provider = aws.aws1
}
output "example_domain_aws1_endpoint" {
  value = aws_opensearch_service_domain.example_domain_aws1.endpoint
}
