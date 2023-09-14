resource "aws_instance" "public_ec2" {
    ami = var.myami
    instance_type = var.my_instance_type
    key_name = var.mykeypair    
    vpc_security_group_ids = [aws_security_group.web-sg-tf.id,aws_security_group.ssh-sg-tf.id]
    user_data = "${file("userdata.sh")}"    
    tags = {
        Name = "Tech-Learnings" 
      }
}


