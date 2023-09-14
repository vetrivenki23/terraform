# Define an AWS security group
resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Example security group for EC2 instance"

  # Define ingress rules to allow inbound traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH access from anywhere
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow HTTP access from anywhere
  }

  # Define egress rules if needed
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"           # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Define an AWS EC2 instance with the associated security group
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  # Associate the EC2 instance with the security group
  security_groups = [aws_security_group.example.name]

  # Other instance attributes...

  tags = {
    Name = "example-instance"
  }
}
