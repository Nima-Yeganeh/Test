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

resource "aws_opensearch_domain" "testiexampleaws1" {
  domain_name    = "testiexampleaws1"
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

resource "aws_opensearch_domain" "testiexampleaws2" {
  domain_name    = "testiexampleaws2"
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

resource "aws_opensearch_domain" "testiexampleaws3" {
  domain_name    = "testiexampleaws3"
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

resource "aws_opensearch_domain" "testiexampleaws4" {
  domain_name    = "testiexampleaws4"
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

resource "aws_opensearch_domain" "testiexampleaws5" {
  domain_name    = "testiexampleaws5"
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

resource "aws_opensearch_domain" "testiexampleaws6" {
  domain_name    = "testiexampleaws6"
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

resource "aws_opensearch_domain" "testiexampleaws7" {
  domain_name    = "testiexampleaws7"
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

resource "aws_opensearch_domain" "testiexampleaws8" {
  domain_name    = "testiexampleaws8"
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

resource "aws_opensearch_domain" "testiexampleaws9" {
  domain_name    = "testiexampleaws9"
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

resource "aws_opensearch_domain" "testiexampleaws10" {
  domain_name    = "testiexampleaws10"
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

resource "aws_opensearch_domain" "testiexampleaws11" {
  domain_name    = "testiexampleaws11"
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

resource "aws_opensearch_domain" "testiexampleaws12" {
  domain_name    = "testiexampleaws12"
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

resource "aws_opensearch_domain" "testiexampleaws13" {
  domain_name    = "testiexampleaws13"
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

resource "aws_opensearch_domain" "testiexampleaws14" {
  domain_name    = "testiexampleaws14"
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

resource "aws_opensearch_domain" "testiexampleaws15" {
  domain_name    = "testiexampleaws15"
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

resource "aws_opensearch_domain" "testiexampleaws16" {
  domain_name    = "testiexampleaws16"
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

resource "aws_opensearch_domain" "testiexampleaws17" {
  domain_name    = "testiexampleaws17"
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

