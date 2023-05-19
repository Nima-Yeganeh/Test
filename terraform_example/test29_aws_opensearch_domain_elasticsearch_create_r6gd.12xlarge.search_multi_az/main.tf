provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

resource "aws_opensearch_domain" "exampleaws1" {
  domain_name    = "exampleaws1"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "4"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = true
  }
  ebs_options {
    ebs_enabled = true
    volume_size = 100
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
