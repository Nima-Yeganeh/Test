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
  default = ["us-west-1", "us-west-2", "us-east-1", "us-east-2"]
}

resource "aws_elasticache_parameter_group" "example" {
  name   = "example-test6"
  family = "memcached1.6"
}

resource "aws_elasticache_cluster" "example" {
  for_each             = toset(var.regions)
  cluster_id           = "cluster-${each.key}"
  engine               = "memcached"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 2
  port                 = 11211
  provider             = "aws.${each.alias}"
}

