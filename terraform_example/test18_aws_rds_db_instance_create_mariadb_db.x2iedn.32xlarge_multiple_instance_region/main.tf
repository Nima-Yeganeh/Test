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

provider "aws" {
  region = "ap-southeast-1"
  alias = "aws9"
}

resource "aws_db_instance" "mynewrds_example9" {
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
  provider = aws.aws9
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "aws10"
}

resource "aws_db_instance" "mynewrds_example10" {
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
  provider = aws.aws10
}

provider "aws" {
  region = "ca-central-1"
  alias = "aws11"
}

resource "aws_db_instance" "mynewrds_example11" {
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
  provider = aws.aws11
}

provider "aws" {
  region = "eu-central-1"
  alias = "aws12"
}

resource "aws_db_instance" "mynewrds_example12" {
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
  provider = aws.aws12
}

provider "aws" {
  region = "eu-west-1"
  alias = "aws13"
}

resource "aws_db_instance" "mynewrds_example13" {
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
  provider = aws.aws13
}

provider "aws" {
  region = "eu-west-2"
  alias = "aws14"
}

resource "aws_db_instance" "mynewrds_example14" {
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
  provider = aws.aws14
}

provider "aws" {
  region = "eu-west-3"
  alias = "aws15"
}

resource "aws_db_instance" "mynewrds_example15" {
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
  provider = aws.aws15
}

provider "aws" {
  region = "eu-north-1"
  alias = "aws16"
}

resource "aws_db_instance" "mynewrds_example16" {
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
  provider = aws.aws16
}

provider "aws" {
  region = "sa-east-1"
  alias = "aws17"
}

resource "aws_db_instance" "mynewrds_example17" {
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
  provider = aws.aws17
}

