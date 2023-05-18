provider "aws" {
  region = "eu-west-1"
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example2"
  engine               = "redis"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}

