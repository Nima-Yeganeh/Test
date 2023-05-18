provider "aws" {
<<<<<<< HEAD
  region = "us-east-1"
  alias = "us-east-1"
}

resource "aws_eip" "example" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
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
}

provider "aws" {
  region = "us-west-2"
  alias = "us-west-2"
=======
  region = "us-west-2"
  alias = "west"
>>>>>>> e5b1999 (done)
}

resource "aws_eip" "example_us_west_2" {
  vpc = true

  tags = {
    Name = "example-eip-us-west-2"
  }

  provider = aws.west
}

provider "aws" {
<<<<<<< HEAD
  region = "ap-south-1"
  alias = "ap-south-1"
=======
  region = "us-east-1"
  alias = "east"
>>>>>>> e5b1999 (done)
}

resource "aws_eip" "example_us_east_1" {
  vpc = true

  tags = {
    Name = "example-eip-us-east-1"
  }

  provider = aws.east
}

<<<<<<< HEAD
provider "aws" {
  region = "ap-northeast-3"
  alias = "ap-northeast-3"
}

resource "aws_eip" "example6" {
  vpc = true

  tags = {
    Name = "example-eip"
  }
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
}
=======
>>>>>>> e5b1999 (done)
