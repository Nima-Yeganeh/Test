provider "aws" {
  region = "sa-east-1"
}

resource "aws_db_instance" "example_database" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "exampledbtest1"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  vpc_security_group_ids = [
    aws_security_group.example_database.id,
  ]

  tags = {
    Name = "exampledbtest1"
  }
}

resource "aws_security_group" "example_database" {
  name_prefix = "example-db-sg-"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "example-db-sg"
  }
}

