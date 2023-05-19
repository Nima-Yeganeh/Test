provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

provider "aws" {
  region = "us-east-2"
  alias = "aws2"
}

provider "aws" {
  region = "us-west-1"
  alias = "aws3"
}

provider "aws" {
  region = "us-west-2"
  alias = "aws4"
}

provider "aws" {
  region = "ap-south-1"
  alias = "aws5"
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "aws6"
}

provider "aws" {
  region = "ap-northeast-2"
  alias = "aws7"
}

provider "aws" {
  region = "ap-northeast-3"
  alias = "aws8"
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "aws9"
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "aws10"
}

provider "aws" {
  region = "ca-central-1"
  alias = "aws11"
}

provider "aws" {
  region = "eu-central-1"
  alias = "aws12"
}

provider "aws" {
  region = "eu-west-1"
  alias = "aws13"
}

provider "aws" {
  region = "eu-west-2"
  alias = "aws14"
}

provider "aws" {
  region = "eu-west-3"
  alias = "aws15"
}

provider "aws" {
  region = "eu-north-1"
  alias = "aws16"
}

provider "aws" {
  region = "sa-east-1"
  alias = "aws17"
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws1" {
  domain_name           = "my-opensearch-domainaws1"
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
    Project     = "my-opensearch-projectaws1"
  }
  provider = aws.aws1
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws1" {
  domain_name           = "my-opensearch-domainaws1"
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
  provider = aws.aws1
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws1" {
  name_prefix = "opensearch_sgaws1"
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
  provider = aws.aws1
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

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws3" {
  domain_name           = "my-opensearch-domainaws3"
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
    Project     = "my-opensearch-projectaws3"
  }
  provider = aws.aws3
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws3" {
  domain_name           = "my-opensearch-domainaws3"
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
  provider = aws.aws3
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws3" {
  name_prefix = "opensearch_sgaws3"
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
  provider = aws.aws3
}

