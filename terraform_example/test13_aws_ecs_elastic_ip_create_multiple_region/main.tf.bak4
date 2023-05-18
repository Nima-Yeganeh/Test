provider "aws" {
  region = "us-west-2"
  alias = "us-west-2"
}

resource "aws_eip" "example_us_west_2" {
  vpc = true

  tags = {
    Name = "example-eip-us-west-2"
  }

  provider = aws.us-west-2
}

provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

resource "aws_eip" "example_us_east_1" {
  vpc = true

  tags = {
    Name = "example-eip-us-east-1"
  }

  provider = aws.us-east-1
}
