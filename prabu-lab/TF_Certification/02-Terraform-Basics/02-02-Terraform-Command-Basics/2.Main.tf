# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0be2609ba883822ec" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}