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
  domain_name           = "my-opensearch-xxdomainaws1"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
  domain_name           = "my-opensearch-xxdomainaws1"
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
  domain_name           = "my-opensearch-xxdomainaws2"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
  domain_name           = "my-opensearch-xxdomainaws2"
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
  domain_name           = "my-opensearch-xxdomainaws3"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
  domain_name           = "my-opensearch-xxdomainaws3"
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

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws4" {
  domain_name           = "my-opensearch-xxdomainaws4"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws4"
  }
  provider = aws.aws4
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws4" {
  domain_name           = "my-opensearch-xxdomainaws4"
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
  provider = aws.aws4
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws4" {
  name_prefix = "opensearch_sgaws4"
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
  provider = aws.aws4
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws5" {
  domain_name           = "my-opensearch-xxdomainaws5"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws5"
  }
  provider = aws.aws5
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws5" {
  domain_name           = "my-opensearch-xxdomainaws5"
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
  provider = aws.aws5
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws5" {
  name_prefix = "opensearch_sgaws5"
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
  provider = aws.aws5
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws6" {
  domain_name           = "my-opensearch-xxdomainaws6"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws6"
  }
  provider = aws.aws6
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws6" {
  domain_name           = "my-opensearch-xxdomainaws6"
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
  provider = aws.aws6
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws6" {
  name_prefix = "opensearch_sgaws6"
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
  provider = aws.aws6
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws7" {
  domain_name           = "my-opensearch-xxdomainaws7"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws7"
  }
  provider = aws.aws7
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws7" {
  domain_name           = "my-opensearch-xxdomainaws7"
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
  provider = aws.aws7
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws7" {
  name_prefix = "opensearch_sgaws7"
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
  provider = aws.aws7
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws8" {
  domain_name           = "my-opensearch-xxdomainaws8"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws8"
  }
  provider = aws.aws8
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws8" {
  domain_name           = "my-opensearch-xxdomainaws8"
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
  provider = aws.aws8
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws8" {
  name_prefix = "opensearch_sgaws8"
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
  provider = aws.aws8
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws9" {
  domain_name           = "my-opensearch-xxdomainaws9"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws9"
  }
  provider = aws.aws9
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws9" {
  domain_name           = "my-opensearch-xxdomainaws9"
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
  provider = aws.aws9
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws9" {
  name_prefix = "opensearch_sgaws9"
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
  provider = aws.aws9
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws10" {
  domain_name           = "my-opensearch-xxdomainaws10"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws10"
  }
  provider = aws.aws10
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws10" {
  domain_name           = "my-opensearch-xxdomainaws10"
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
  provider = aws.aws10
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws10" {
  name_prefix = "opensearch_sgaws10"
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
  provider = aws.aws10
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws11" {
  domain_name           = "my-opensearch-xxdomainaws11"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws11"
  }
  provider = aws.aws11
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws11" {
  domain_name           = "my-opensearch-xxdomainaws11"
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
  provider = aws.aws11
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws11" {
  name_prefix = "opensearch_sgaws11"
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
  provider = aws.aws11
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws12" {
  domain_name           = "my-opensearch-xxdomainaws12"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws12"
  }
  provider = aws.aws12
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws12" {
  domain_name           = "my-opensearch-xxdomainaws12"
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
  provider = aws.aws12
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws12" {
  name_prefix = "opensearch_sgaws12"
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
  provider = aws.aws12
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws13" {
  domain_name           = "my-opensearch-xxdomainaws13"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws13"
  }
  provider = aws.aws13
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws13" {
  domain_name           = "my-opensearch-xxdomainaws13"
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
  provider = aws.aws13
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws13" {
  name_prefix = "opensearch_sgaws13"
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
  provider = aws.aws13
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws14" {
  domain_name           = "my-opensearch-xxdomainaws14"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws14"
  }
  provider = aws.aws14
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws14" {
  domain_name           = "my-opensearch-xxdomainaws14"
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
  provider = aws.aws14
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws14" {
  name_prefix = "opensearch_sgaws14"
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
  provider = aws.aws14
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws15" {
  domain_name           = "my-opensearch-xxdomainaws15"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws15"
  }
  provider = aws.aws15
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws15" {
  domain_name           = "my-opensearch-xxdomainaws15"
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
  provider = aws.aws15
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws15" {
  name_prefix = "opensearch_sgaws15"
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
  provider = aws.aws15
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws16" {
  domain_name           = "my-opensearch-xxdomainaws16"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws16"
  }
  provider = aws.aws16
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws16" {
  domain_name           = "my-opensearch-xxdomainaws16"
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
  provider = aws.aws16
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws16" {
  name_prefix = "opensearch_sgaws16"
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
  provider = aws.aws16
}

# Define OpenSearch data nodes
resource "aws_opensearch_domain" "data_nodesaws17" {
  domain_name           = "my-opensearch-xxdomainaws17"
  engine_version = "Elasticsearch_7.10"
  cluster_config {
    instance_type       = "r6g.4xlarge.search"
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
    throughput          = 300
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
    Project     = "my-opensearch-projectaws17"
  }
  provider = aws.aws17
}
# Define UltraWarmnodes for warm and cold data storage
resource "aws_opensearch_domain" "ultrawarm_nodesaws17" {
  domain_name           = "my-opensearch-xxdomainaws17"
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
  provider = aws.aws17
}
# Define security group to allow public access
resource "aws_security_group" "opensearch_sgaws17" {
  name_prefix = "opensearch_sgaws17"
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
  provider = aws.aws17
}

