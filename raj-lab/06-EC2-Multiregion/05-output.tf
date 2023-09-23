output "public_ip_west2" {
  value = aws_instance.tf_ec2_west2.public_ip
}

output "public_ip_east2" {
  value = aws_instance.tf_ec2_east2.public_ip
}

# output "sg_id" {
#   value = data.aws_security_group.web_server.id
# }