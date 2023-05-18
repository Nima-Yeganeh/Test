provider "aws" {
  region = "us-east-1"
}

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

variable "regions" {
  type    = list(string)
  default = ["r1", "r2", "r3", "r4"]
}

resource "aws_elasticache_parameter_group" "example" {
  name   = "example-test12"
  family = "memcached1.6"
}

resource "aws_elasticache_cluster" "example1" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws1
}

resource "aws_elasticache_cluster" "example2" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws2
}

resource "aws_elasticache_cluster" "example3" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws3
}

resource "aws_elasticache_cluster" "example4" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws4
}

resource "aws_elasticache_cluster" "example5" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws5
}

resource "aws_elasticache_cluster" "example6" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws6
}

resource "aws_elasticache_cluster" "example7" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws7
}

resource "aws_elasticache_cluster" "example8" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws8
}

resource "aws_elasticache_cluster" "example9" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws9
}

resource "aws_elasticache_cluster" "example10" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws10
}

resource "aws_elasticache_cluster" "example11" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws11
}

resource "aws_elasticache_cluster" "example12" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws12
}

resource "aws_elasticache_cluster" "example13" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws13
}

resource "aws_elasticache_cluster" "example14" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws14
}

resource "aws_elasticache_cluster" "example15" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws15
}

resource "aws_elasticache_cluster" "example16" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws16
}

resource "aws_elasticache_cluster" "example17" {
  for_each             = toset(var.regions)
  cluster_id           = "testi-cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 8
  port                 = 11211
  provider             = aws.aws17
}

