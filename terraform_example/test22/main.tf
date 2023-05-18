provider "aws" {
  region = "eu-west-1"
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example3"
  engine               = "memcached"
  node_type            = "cache.r5.24xlarge"
  num_cache_nodes      = 2
  parameter_group_name = "default.memcached1.6"
  port                 = 11211
}

