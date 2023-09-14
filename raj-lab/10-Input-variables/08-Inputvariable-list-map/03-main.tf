resource "aws_instance" "tech_instance" {
  ami = var.ec2_ami
  instance_type = var.instance_type["type"]
  count =var.instance_count
  subnet_id = var.subnet_info[0]
  associate_public_ip_address = var.enable_public_ip
  security_groups=var.security_groups
  tags=var.tags  
}
