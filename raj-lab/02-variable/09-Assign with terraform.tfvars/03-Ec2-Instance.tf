resource "aws_instance" "public_ec2" {
    ami = var.myami
    instance_type = var.ec2_instance_type
    key_name = var.mykeypair
    #security_groups= [data.aws_security_group.aws_security_group.web-sg.vpc_security_group_ids,aws_security_group.ssh-sg.name]
   # vpc_security_group_ids = ["sg-0499c7495ef391a2d","sg-02d9480e39e649bb8"]
    vpc_security_group_ids = [aws_security_group.web-sg.id,aws_security_group.ssh-sg.id]
    user_data = "${file("userdata.sh")}"
    #subnet_id = aws_subnet.public_subnet.id
    tags = {
        Name = "Raj-Public-Instance"
      }
}
# resource "aws_instance" "private_ec2" {
#     ami = var.myami
#     instance_type = var.my_instance_type
#     key_name = var.mykeypair
#     #security_groups= [aws_security_group.web-sg.name,aws_security_group.ssh-sg.name]
#     vpc_security_group_ids = ["sg-0499c7495ef391a2d","sg-02d9480e39e649bb8"]
#     user_data = "${file("userdata.sh")}"
#     subnet_id = aws_subnet.private_subnet.id
#     tags = {
#         Name = "Raj-Private-Instance"
#       }
# }

