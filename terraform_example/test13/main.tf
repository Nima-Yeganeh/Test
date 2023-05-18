provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.us-east-1
}

provider "aws" {
  region = "us-east-2"
  alias = "us-east-2"
}

resource "aws_eip" "example2" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.us-east-2
}

provider "aws" {
  region = "us-west-1"
  alias = "us-west-1"
}

resource "aws_eip" "example3" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.us-west-1
}

provider "aws" {
  region = "us-west-2"
  alias = "us-west-2"
}

resource "aws_eip" "example4" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.us-west-2
}

provider "aws" {
  region = "ap-south-1"
  alias = "ap-south-1"
}

resource "aws_eip" "example5" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.ap-south-1
}

provider "aws" {
  region = "ap-northeast-3"
  alias = "ap-northeast-3"
}

resource "aws_eip" "example6" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.ap-northeast-3
}

provider "aws" {
  region = "ap-northeast-2"
  alias = "ap-northeast-2"
}

resource "aws_eip" "example7" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.ap-northeast-2
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "ap-northeast-1"  
}

resource "aws_eip" "example8" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.ap-northeast-1
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "ap-southeast-1"
}

resource "aws_eip" "example9" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.ap-southeast-1
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "ap-southeast-2"
}

resource "aws_eip" "example10" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.ap-southeast-2
}

provider "aws" {
  region = "ca-central-1"
  alias = "ca-central-1"
}

resource "aws_eip" "example11" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.ca-central-1
}

provider "aws" {
  region = "eu-central-1"
  alias = "eu-central-1"  
}

resource "aws_eip" "example12" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.eu-central-1
}

provider "aws" {
  region = "eu-west-1"
  alias = "eu-west-1"
}

resource "aws_eip" "example13" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.eu-west-1
}

provider "aws" {
  region = "eu-west-2"
  alias = "eu-west-2"  
}

resource "aws_eip" "example14" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.eu-west-2
}

provider "aws" {
  region = "eu-west-3"
  alias = "eu-west-3" 
}

resource "aws_eip" "example15" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.eu-west-3
}

provider "aws" {
  region = "eu-north-1"
  alias = "eu-north-1"  
}

resource "aws_eip" "example16" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.eu-north-1
}

provider "aws" {
  region = "sa-east-1"
  alias = "sa-east-1"
}

resource "aws_eip" "example17" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
  provider = aws.sa-east-1
}
