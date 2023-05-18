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

provider "aws" {
  region = "us-west-1"
  alias = "aws3"
}

resource "aws_db_instance" "mynewrds_example3" {
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
  provider = aws.aws3
}

provider "aws" {
  region = "us-west-2"
  alias = "aws4"
}

resource "aws_db_instance" "mynewrds_example4" {
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
  provider = aws.aws4
}

provider "aws" {
  region = "ap-south-1"
  alias = "aws5"
}

resource "aws_db_instance" "mynewrds_example5" {
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
  provider = aws.aws5
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "aws6"
}

resource "aws_db_instance" "mynewrds_example6" {
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
  provider = aws.aws6
}

provider "aws" {
  region = "ap-northeast-2"
  alias = "aws7"
}

resource "aws_db_instance" "mynewrds_example7" {
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
  provider = aws.aws7
}

provider "aws" {
  region = "ap-northeast-3"
  alias = "aws8"
}

resource "aws_db_instance" "mynewrds_example8" {
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
  provider = aws.aws8
}
