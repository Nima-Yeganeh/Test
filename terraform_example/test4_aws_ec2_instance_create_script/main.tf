provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

resource "aws_instance" "example_instance" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
	      yum update -y
	      yum install httpd -y
	      systemctl enable httpd.service
	      systemctl start httpd.service
	      echo "<html><h1>Test Web Server</h1></html>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "example-instance"
  }
}

output "public_ip" {
  value = aws_instance.example_instance.public_ip
}

