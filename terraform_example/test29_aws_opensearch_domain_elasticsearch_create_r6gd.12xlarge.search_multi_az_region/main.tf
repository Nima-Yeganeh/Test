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

resource "aws_opensearch_domain" "testexampleaws1" {
  domain_name    = "testexampleaws1"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws1
}

resource "aws_opensearch_domain" "testexampleaws2" {
  domain_name    = "testexampleaws2"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws2
}

resource "aws_opensearch_domain" "testexampleaws3" {
  domain_name    = "testexampleaws3"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws3
}

resource "aws_opensearch_domain" "testexampleaws4" {
  domain_name    = "testexampleaws4"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws4
}

resource "aws_opensearch_domain" "testexampleaws5" {
  domain_name    = "testexampleaws5"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws5
}

resource "aws_opensearch_domain" "testexampleaws6" {
  domain_name    = "testexampleaws6"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws6
}

resource "aws_opensearch_domain" "testexampleaws7" {
  domain_name    = "testexampleaws7"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws7
}

resource "aws_opensearch_domain" "testexampleaws8" {
  domain_name    = "testexampleaws8"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws8
}

resource "aws_opensearch_domain" "testexampleaws9" {
  domain_name    = "testexampleaws9"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws9
}

resource "aws_opensearch_domain" "testexampleaws10" {
  domain_name    = "testexampleaws10"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws10
}

resource "aws_opensearch_domain" "testexampleaws11" {
  domain_name    = "testexampleaws11"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws11
}

resource "aws_opensearch_domain" "testexampleaws12" {
  domain_name    = "testexampleaws12"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws12
}

resource "aws_opensearch_domain" "testexampleaws13" {
  domain_name    = "testexampleaws13"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws13
}

resource "aws_opensearch_domain" "testexampleaws14" {
  domain_name    = "testexampleaws14"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws14
}

resource "aws_opensearch_domain" "testexampleaws15" {
  domain_name    = "testexampleaws15"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws15
}

resource "aws_opensearch_domain" "testexampleaws16" {
  domain_name    = "testexampleaws16"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws16
}

resource "aws_opensearch_domain" "testexampleaws17" {
  domain_name    = "testexampleaws17"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type             = "r6gd.12xlarge.search"
    instance_count            = "10"
    zone_awareness_enabled    = true
    dedicated_master_enabled  = false
  }
  tags = {
    Environment = "production"
    Service     = "search"
    Domain = "TestDomain"
  }
  snapshot_options {
    automated_snapshot_start_hour = 1
  }
  provider = aws.aws17
}

