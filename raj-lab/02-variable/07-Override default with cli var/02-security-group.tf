resource "aws_security_group" "web-sg" {
    name = "web_sg"

    ingress {
        description = "WEB-SG-var3"
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

resource "aws_security_group" "ssh-sg" {
    name = "SSH-SG-1"

    ingress {
        description = "SSH-SG-var3"
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