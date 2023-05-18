provider "aws" {
    region = "eu-west-1"
    alias = "eu-west-1"
}

resource "aws_db_instance" "myrds2" {
    name = "myrds2"
    identifier = "myrds2"
    instance_class = "db.x2iedn.32xlarge"
    engine = "mariadb"
    engine_version = "10.6.10"
    username = "nima"
    password = "password1234"
    port = "3306"
    allocated_storage = "20"
    skip_final_snapshot = true
    provider = aws.eu-west-1
}
