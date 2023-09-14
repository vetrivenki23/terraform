resource "aws_instance" "tf_ec2_west2" {
//ami           = "ami-07d77b1e82b231201"   # us-east-1
  provider = aws.WEST-REGION
  ami         = var.ec2_ami_west2
  instance_type = var.ec2_type             
  user_data = file("userdata.sh")
  
  #vpc_security_group_ids = [data.aws_security_group.east2_sg.id]

  tags = {
    Name = "Raj-EC2-Module-west2"
  }
}

resource "aws_instance" "tf_ec2_east2" {
//ami           = "ami-07d77b1e82b231201"   # us-east-1
  ami         = var.ec2_ami_east2
  instance_type = var.ec2_type             

  user_data = file("userdata.sh")
  
  vpc_security_group_ids = [data.aws_security_group.east2_sg.id]

  tags = {
    Name = "Raj-EC2-Module-east2"
  }
}
