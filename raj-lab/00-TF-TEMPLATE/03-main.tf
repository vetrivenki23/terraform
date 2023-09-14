resource "aws_instance" "tf_ec2" {
//ami           = "ami-07d77b1e82b231201"   # us-east-1
  ami           = "ami-01ca463d85a7b8110"  # us-east-2
  instance_type = "t2.micro"               

  user_data = file("userdata.sh")
  
  vpc_security_group_ids = [data.aws_security_group.web_server.id]

  tags = {
    Name = "Ven-EC2"
  }
}
