provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

resource "aws_opensearch_domain" "example" {
  domain_name    = "example"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type = "r6gd.12xlarge.search"
    node_count    = 3
    zone_awareness_enabled = true
  }
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
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 23
  }
  provider = aws.aws1
}
