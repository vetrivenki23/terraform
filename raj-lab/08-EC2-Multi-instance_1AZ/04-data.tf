data "aws_security_group" "web_server" {
  name = "web_sg"
}

data "aws_availability_zones" "available" {}