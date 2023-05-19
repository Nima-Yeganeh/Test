provider "aws" {
  region = "us-east-1"
}

resource "aws_opensearch_domain" "example" {
  domain_name    = "example"
  engine_version = "Elasticsearch_7.10"

  cluster_config {
    instance_type = "r6gd.12xlarge.search"
  }

  tags = {
    Domain = "TestDomain"
  }
}
