provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

provider "aws" {
  region = "us-east-2"
  alias = "us-east-2"
}

provider "aws" {
  region = "us-west-1"
  alias = "us-west-1"
}

provider "aws" {
  region = "us-west-2"
  alias = "us-west-2"
}

variable "regions" {
  type    = list(string)
  default = ["r1", "r2", "r3", "r4"]
}

resource "aws_elasticache_parameter_group" "example" {
  name   = "example-test7"
  family = "memcached1.6"
}

resource "aws_elasticache_cluster" "example1" {
  for_each             = toset(var.regions)
  cluster_id           = "cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 2
  port                 = 11211
  provider             = aws.us-east-1
}

resource "aws_elasticache_cluster" "example2" {
  for_each             = toset(var.regions)
  cluster_id           = "cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 2
  port                 = 11211
  provider             = aws.us-east-2
}

resource "aws_elasticache_cluster" "example3" {
  for_each             = toset(var.regions)
  cluster_id           = "cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 2
  port                 = 11211
  provider             = aws.us-west-1
}

resource "aws_elasticache_cluster" "example4" {
  for_each             = toset(var.regions)
  cluster_id           = "cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 2
  port                 = 11211
  provider             = aws.us-west-2
}
