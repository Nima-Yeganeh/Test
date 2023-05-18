provider "aws" {
  region = "us-east-1"
  alias = "aws1"
}

resource "aws_db_instance" "mynewrds_example1" {
  count = 3
  name = "mynewrds${count.index + 1}"
  identifier = "mynewrds${count.index + 1}"
  instance_class = "db.x2iedn.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  provider = aws.aws1
}

provider "aws" {
  region = "us-east-2"
  alias = "aws2"
}

resource "aws_db_instance" "mynewrds_example2" {
  count = 3
  name = "mynewrds${count.index + 1}"
  identifier = "mynewrds${count.index + 1}"
  instance_class = "db.x2iedn.32xlarge"
  engine = "mariadb"
  engine_version = "10.6.10"
  username = "nima"
  password = "password1234"
  port = "3306"
  allocated_storage = "20"
  skip_final_snapshot = true
  provider = aws.aws2
}
