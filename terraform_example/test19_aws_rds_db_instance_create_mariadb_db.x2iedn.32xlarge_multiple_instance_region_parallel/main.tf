provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

resource "aws_db_instance" "mynewtestirds_example1" {
  count = 20
  name = "mynewtestirds${count.index + 1}"
  identifier = "mynewtestirds${count.index + 1}"
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
  monitoring_interval = 1
  monitoring_role_arn = aws_iam_role.myrds_monitoring.arn
  enabled_cloudwatch_logs_exports = ["audit", "error", "general", "slowquery"]
  storage_encrypted = true
  storage_type = "gp2"
  max_allocated_storage = 100
  min_allocated_storage = 20
  scaling_configuration {
    auto_pause = true
    max_capacity = 2
    min_capacity = 1
  }
  provider = aws.aws1
}

