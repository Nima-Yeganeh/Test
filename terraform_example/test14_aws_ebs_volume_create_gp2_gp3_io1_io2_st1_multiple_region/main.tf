provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

resource "aws_ebs_volume" "example1_gb2" {
  availability_zone = "us-east-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.us-east-1
}

resource "aws_ebs_volume" "example1_gb3" {
  availability_zone = "us-east-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.us-east-1
}

resource "aws_ebs_volume" "example1_io1" {
  availability_zone = "us-east-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.us-east-1
}

resource "aws_ebs_volume" "example1_io2" {
  availability_zone = "us-east-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.us-east-1
}

resource "aws_ebs_volume" "example1_st1" {
  availability_zone = "us-east-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.us-east-1
}

provider "aws" {
  region = "us-east-2"
  alias = "us-east-2"
}

resource "aws_ebs_volume" "example2_gb2" {
  availability_zone = "us-east-2a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.us-east-2
}

resource "aws_ebs_volume" "example2_gb3" {
  availability_zone = "us-east-2a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.us-east-2
}

resource "aws_ebs_volume" "example2_io1" {
  availability_zone = "us-east-2a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.us-east-2
}

resource "aws_ebs_volume" "example2_io2" {
  availability_zone = "us-east-2a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.us-east-2
}

resource "aws_ebs_volume" "example2_st1" {
  availability_zone = "us-east-2a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.us-east-2
}

provider "aws" {
  region = "us-west-1"
  alias = "us-west-1"
}

resource "aws_ebs_volume" "example3_gb2" {
  availability_zone = "us-west-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.us-west-1
}

resource "aws_ebs_volume" "example3_gb3" {
  availability_zone = "us-west-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.us-west-1
}

resource "aws_ebs_volume" "example3_io1" {
  availability_zone = "us-west-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.us-west-1
}

resource "aws_ebs_volume" "example3_io2" {
  availability_zone = "us-west-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.us-west-1
}

resource "aws_ebs_volume" "example3_st1" {
  availability_zone = "us-west-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.us-west-1
}

provider "aws" {
  region = "us-west-2"
  alias = "us-west-2"
}

resource "aws_ebs_volume" "example4_gb2" {
  availability_zone = "us-west-2a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.us-west-2
}

resource "aws_ebs_volume" "example4_gb3" {
  availability_zone = "us-west-2a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.us-west-2
}

resource "aws_ebs_volume" "example4_io1" {
  availability_zone = "us-west-2a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.us-west-2
}

resource "aws_ebs_volume" "example4_io2" {
  availability_zone = "us-west-2a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.us-west-2
}

resource "aws_ebs_volume" "example4_st1" {
  availability_zone = "us-west-2a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.us-west-2
}

provider "aws" {
  region = "ap-south-1"
  alias = "ap-south-1"
}

resource "aws_ebs_volume" "example5_gb2" {
  availability_zone = "ap-south-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.ap-south-1
}

resource "aws_ebs_volume" "example5_gb3" {
  availability_zone = "ap-south-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.ap-south-1
}

resource "aws_ebs_volume" "example5_io1" {
  availability_zone = "ap-south-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.ap-south-1
}

resource "aws_ebs_volume" "example5_io2" {
  availability_zone = "ap-south-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.ap-south-1
}

resource "aws_ebs_volume" "example5_st1" {
  availability_zone = "ap-south-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.ap-south-1
}

provider "aws" {
  region = "ap-northeast-3"
  alias = "ap-northeast-3"
}

resource "aws_ebs_volume" "example6_gb2" {
  availability_zone = "ap-northeast-3a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.ap-northeast-3
}

resource "aws_ebs_volume" "example6_gb3" {
  availability_zone = "ap-northeast-3a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.ap-northeast-3
}

resource "aws_ebs_volume" "example6_io1" {
  availability_zone = "ap-northeast-3a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.ap-northeast-3
}

resource "aws_ebs_volume" "example6_io2" {
  availability_zone = "ap-northeast-3a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.ap-northeast-3
}

resource "aws_ebs_volume" "example6_st1" {
  availability_zone = "ap-northeast-3a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.ap-northeast-3
}

provider "aws" {
  region = "ap-northeast-2"
  alias = "ap-northeast-2"
}

resource "aws_ebs_volume" "example7_gb2" {
  availability_zone = "ap-northeast-2a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.ap-northeast-2
}

resource "aws_ebs_volume" "example7_gb3" {
  availability_zone = "ap-northeast-2a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.ap-northeast-2
}

resource "aws_ebs_volume" "example7_io1" {
  availability_zone = "ap-northeast-2a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.ap-northeast-2
}

resource "aws_ebs_volume" "example7_io2" {
  availability_zone = "ap-northeast-2a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.ap-northeast-2
}

resource "aws_ebs_volume" "example7_st1" {
  availability_zone = "ap-northeast-2a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.ap-northeast-2
}

