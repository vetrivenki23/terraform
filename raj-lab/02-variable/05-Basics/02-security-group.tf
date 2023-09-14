resource "aws_security_group" "web-sg-tf" {
    name = "web_sg_aws"

    ingress {
        description = "WEB-SG"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

  }

resource "aws_security_group" "ssh-sg-tf" {
    name = "ssh_sg_aws"

    ingress {
        description = "SSH-SG"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

     egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}