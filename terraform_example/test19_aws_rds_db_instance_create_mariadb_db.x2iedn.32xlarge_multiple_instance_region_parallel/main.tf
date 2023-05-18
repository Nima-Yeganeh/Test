provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

resource "aws_db_instance" "mynewtestiirds_example1" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws1
}

provider "aws" {
  region = "us-east-2"
  alias = "aws2"
}

resource "aws_db_instance" "mynewtestiirds_example2" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws2
}

provider "aws" {
  region = "us-west-1"
  alias = "aws3"
}

resource "aws_db_instance" "mynewtestiirds_example3" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws3
}

provider "aws" {
  region = "us-west-2"
  alias = "aws4"
}

resource "aws_db_instance" "mynewtestiirds_example4" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws4
}

provider "aws" {
  region = "ap-south-1"
  alias = "aws5"
}

resource "aws_db_instance" "mynewtestiirds_example5" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws5
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "aws6"
}

resource "aws_db_instance" "mynewtestiirds_example6" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws6
}

provider "aws" {
  region = "ap-northeast-2"
  alias = "aws7"
}

resource "aws_db_instance" "mynewtestiirds_example7" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws7
}

provider "aws" {
  region = "ap-northeast-3"
  alias = "aws8"
}

resource "aws_db_instance" "mynewtestiirds_example8" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws8
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "aws9"
}

resource "aws_db_instance" "mynewtestiirds_example9" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws9
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "aws10"
}

resource "aws_db_instance" "mynewtestiirds_example10" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws10
}

provider "aws" {
  region = "ca-central-1"
  alias = "aws11"
}

resource "aws_db_instance" "mynewtestiirds_example11" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws11
}

provider "aws" {
  region = "eu-central-1"
  alias = "aws12"
}

resource "aws_db_instance" "mynewtestiirds_example12" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws12
}

provider "aws" {
  region = "eu-west-1"
  alias = "aws13"
}

resource "aws_db_instance" "mynewtestiirds_example13" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws13
}

provider "aws" {
  region = "eu-west-2"
  alias = "aws14"
}

resource "aws_db_instance" "mynewtestiirds_example14" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws14
}

provider "aws" {
  region = "eu-west-3"
  alias = "aws15"
}

resource "aws_db_instance" "mynewtestiirds_example15" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws15
}

provider "aws" {
  region = "eu-north-1"
  alias = "aws16"
}

resource "aws_db_instance" "mynewtestiirds_example16" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws16
}

provider "aws" {
  region = "sa-east-1"
  alias = "aws17"
}

resource "aws_db_instance" "mynewtestiirds_example17" {
  count = 40
  name = "mynewtestiirds${count.index + 1}"
  identifier = "mynewtestiirds${count.index + 1}"
  instance_class = "db.r6i.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  publicly_accessible = true
  backup_retention_period = 1
  backup_window = "06:00-10:00"
  performance_insights_enabled = true
  multi_az = true
  monitoring_interval = 0
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 20
  provider = aws.aws17
}

