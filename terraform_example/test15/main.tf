provider "aws" {
    region = "eu-west-1"
}

resource "aws_db_instance" "myRDS" {
    name = "myRDS"
    identifier = "my-first-rds"
    instance_class = "db.t2.micro"
    engine = "mariadb"
    engine_version = "10.16.10"
    username = "nima"
    password = "password1234"
    port = "3306"
    allocated_storage = "20"
    skip_final_snapshot = true

}
