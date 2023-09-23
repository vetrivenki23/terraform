resource "aws_instance" "tf_ec2" {
//ami           = "ami-07d77b1e82b231201"   # us-east-1
  count = 2
  ami         = var.ec2_ami
  instance_type = var.ec2_type             

  user_data = file("userdata.sh")
  
  vpc_security_group_ids = [data.aws_security_group.web_server.id]

  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "Raj-${count.index}"
  }

}
