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

provider "aws" {
  region = "ap-northeast-1"
  alias = "ap-northeast-1"
}

resource "aws_ebs_volume" "example8_gb2" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.ap-northeast-1
}

resource "aws_ebs_volume" "example8_gb3" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.ap-northeast-1
}

resource "aws_ebs_volume" "example8_io1" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.ap-northeast-1
}

resource "aws_ebs_volume" "example8_io2" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.ap-northeast-1
}

resource "aws_ebs_volume" "example8_st1" {
  availability_zone = "ap-northeast-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.ap-northeast-1
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "ap-southeast-2"
}

resource "aws_ebs_volume" "example9_gb2" {
  availability_zone = "ap-southeast-2a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.ap-southeast-2
}

resource "aws_ebs_volume" "example9_gb3" {
  availability_zone = "ap-southeast-2a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.ap-southeast-2
}

resource "aws_ebs_volume" "example9_io1" {
  availability_zone = "ap-southeast-2a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.ap-southeast-2
}

resource "aws_ebs_volume" "example9_io2" {
  availability_zone = "ap-southeast-2a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.ap-southeast-2
}

resource "aws_ebs_volume" "example9_st1" {
  availability_zone = "ap-southeast-2a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.ap-southeast-2
}

provider "aws" {
  region = "ca-central-1"
  alias = "ca-central-1"
}

resource "aws_ebs_volume" "example10_gb2" {
  availability_zone = "ca-central-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.ca-central-1
}

resource "aws_ebs_volume" "example10_gb3" {
  availability_zone = "ca-central-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.ca-central-1
}

resource "aws_ebs_volume" "example10_io1" {
  availability_zone = "ca-central-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.ca-central-1
}

resource "aws_ebs_volume" "example10_io2" {
  availability_zone = "ca-central-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.ca-central-1
}

resource "aws_ebs_volume" "example10_st1" {
  availability_zone = "ca-central-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.ca-central-1
}

provider "aws" {
  region = "eu-central-1"
  alias = "eu-central-1"
}

resource "aws_ebs_volume" "example11_gb2" {
  availability_zone = "eu-central-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.eu-central-1
}

resource "aws_ebs_volume" "example11_gb3" {
  availability_zone = "eu-central-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.eu-central-1
}

resource "aws_ebs_volume" "example11_io1" {
  availability_zone = "eu-central-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.eu-central-1
}

resource "aws_ebs_volume" "example11_io2" {
  availability_zone = "eu-central-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.eu-central-1
}

resource "aws_ebs_volume" "example11_st1" {
  availability_zone = "eu-central-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.eu-central-1
}

provider "aws" {
  region = "eu-west-1"
  alias = "eu-west-1"
}

resource "aws_ebs_volume" "example12_gb2" {
  availability_zone = "eu-west-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.eu-west-1
}

resource "aws_ebs_volume" "example12_gb3" {
  availability_zone = "eu-west-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.eu-west-1
}

resource "aws_ebs_volume" "example12_io1" {
  availability_zone = "eu-west-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.eu-west-1
}

resource "aws_ebs_volume" "example12_io2" {
  availability_zone = "eu-west-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.eu-west-1
}

resource "aws_ebs_volume" "example12_st1" {
  availability_zone = "eu-west-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.eu-west-1
}

provider "aws" {
  region = "eu-west-2"
  alias = "eu-west-2"
}

resource "aws_ebs_volume" "example13_gb2" {
  availability_zone = "eu-west-2a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.eu-west-2
}

resource "aws_ebs_volume" "example13_gb3" {
  availability_zone = "eu-west-2a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.eu-west-2
}

resource "aws_ebs_volume" "example13_io1" {
  availability_zone = "eu-west-2a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.eu-west-2
}

resource "aws_ebs_volume" "example13_io2" {
  availability_zone = "eu-west-2a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.eu-west-2
}

resource "aws_ebs_volume" "example13_st1" {
  availability_zone = "eu-west-2a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.eu-west-2
}

provider "aws" {
  region = "eu-west-3"
  alias = "eu-west-3"
}

resource "aws_ebs_volume" "example14_gb2" {
  availability_zone = "eu-west-3a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.eu-west-3
}

resource "aws_ebs_volume" "example14_gb3" {
  availability_zone = "eu-west-3a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.eu-west-3
}

resource "aws_ebs_volume" "example14_io1" {
  availability_zone = "eu-west-3a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.eu-west-3
}

resource "aws_ebs_volume" "example14_io2" {
  availability_zone = "eu-west-3a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.eu-west-3
}

resource "aws_ebs_volume" "example14_st1" {
  availability_zone = "eu-west-3a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.eu-west-3
}

provider "aws" {
  region = "eu-north-1"
  alias = "eu-north-1"
}

resource "aws_ebs_volume" "example15_gb2" {
  availability_zone = "eu-north-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.eu-north-1
}

resource "aws_ebs_volume" "example15_gb3" {
  availability_zone = "eu-north-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.eu-north-1
}

resource "aws_ebs_volume" "example15_io1" {
  availability_zone = "eu-north-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.eu-north-1
}

resource "aws_ebs_volume" "example15_io2" {
  availability_zone = "eu-north-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.eu-north-1
}

resource "aws_ebs_volume" "example15_st1" {
  availability_zone = "eu-north-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.eu-north-1
}

provider "aws" {
  region = "sa-east-1"
  alias = "sa-east-1"
}

resource "aws_ebs_volume" "example16_gb2" {
  availability_zone = "sa-east-1a"
  size              = 16000
  type              = "gp2"
  tags = {
    Name = "example-gp2-volume"
  }
  provider = aws.sa-east-1
}

resource "aws_ebs_volume" "example16_gb3" {
  availability_zone = "sa-east-1a"
  size              = 16000
  type              = "gp3"
  tags = {
    Name = "example-gp3-volume"
  }
  provider = aws.sa-east-1
}

resource "aws_ebs_volume" "example16_io1" {
  availability_zone = "sa-east-1a"
  size              = 16000
  type              = "io1"
  iops              = 1000
  tags = {
    Name = "example-io1-volume"
  }
  provider = aws.sa-east-1
}

resource "aws_ebs_volume" "example16_io2" {
  availability_zone = "sa-east-1a"
  size              = 16000
  type              = "io2"
  iops              = 2000
  tags = {
    Name = "example-io2-volume"
  }
  provider = aws.sa-east-1
}

resource "aws_ebs_volume" "example16_st1" {
  availability_zone = "sa-east-1a"
  size              = 16000
  type              = "st1"
  tags = {
    Name = "example-st1-volume"
  }
  provider = aws.sa-east-1
}

