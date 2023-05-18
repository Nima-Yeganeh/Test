provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "ap-northeast-3"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "ca-central-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
}
