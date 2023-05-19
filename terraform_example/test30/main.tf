# Define AWS provider
provider "aws" {
  region = "us-east-1"
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodes" {
  domain_name           = "my-opensearch-domain"
  cluster_config {
    instance_type       = "r6g.12xlarge.search"
    instance_count      = 78
    dedicated_master_enabled = true
    dedicated_master_type = "m6g.8xlarge.search"
    dedicated_master_count = 3
    zone_awareness_enabled = true
    availability_zone_count = 3
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
  domain_endpoint_options {
    enforce_https       = true
  }
  advanced_options {
    "rest.action.multi.allow_explicit_index" = "true"
  }
  tags = {
    Environment = "production"
    Project     = "my-opensearch-project"
  }
}

# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodes" {
  domain_name           = "my-opensearch-domain"
  cluster_config {
    warm_enabled        = true
    cold_enabled        = false
    instance_type       = "ultrawarm1.large.search"
    instance_count      = 120
  }
  ebs_options {
    ebs_enabled         = true
    volume_type         = "gp3"
    volume_size         = 100
  }
}

# Define security group to allow public access
resource "aws_security_group" "opensearch_sg" {
  name_prefix = "opensearch_sg"
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
}

# Attach security group to OpenSearch domain
resource "aws_opensearch_domain_security_group" "opensearch_sg" {
  domain_name = aws_opensearch_domain.data_nodes.domain_name
  security_group_id = aws_security_group.opensearch_sg.id
}
