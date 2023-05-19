# Define AWS provider
provider "aws" {
  region = "us-east-2"
  alias = "aws2"
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws2" {
  domain_name           = "my-opensearch-domainaws2"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.12xlarge.search"
    instance_count      = 78
    dedicated_master_enabled = true
    dedicated_master_type = "m6g.8xlarge.search"
    dedicated_master_count = 3
    zone_awareness_enabled = true
  }
  ebs_options {
    ebs_enabled         = true
    volume_type         = "gp3"
    volume_size         = 100
    iops                = 3000
    throughput          = 600
  }
  encrypt_at_rest {
    enabled = true
  }
  node_to_node_encryption {
    enabled = true
  }
  snapshot_options {
    automated_snapshot_start_hour = 23
  }
  tags = {
    Environment = "production"
    Project     = "my-opensearch-projectaws2"
  }
  provider = aws.aws2
}

# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws2" {
  domain_name           = "my-opensearch-domainaws2"
  cluster_config {
    warm_enabled        = true
    instance_type       = "ultrawarm1.large.search"
    instance_count      = 120
  }
  ebs_options {
    ebs_enabled         = true
    volume_type         = "gp3"
    volume_size         = 100
  }
  provider = aws.aws2
}

# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws2" {
  name_prefix = "opensearch_sgaws2"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  provider = aws.aws2
}

