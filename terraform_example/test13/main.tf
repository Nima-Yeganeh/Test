provider "aws" {
  region = "us-west-2"
  alias = "west"
}

resource "aws_eip" "example_us_west_2" {
  vpc = true

  tags = {
    Name = "example-eip-us-west-2"
  }

  provider = aws.west
}

provider "aws" {
  region = "us-east-1"
  alias = "east"
}

resource "aws_eip" "example_us_east_1" {
  vpc = true

  tags = {
    Name = "example-eip-us-east-1"
  }

  provider = aws.east
}
