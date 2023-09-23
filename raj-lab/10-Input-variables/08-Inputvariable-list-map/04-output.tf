output "public_ip" {
  value = aws_instance.tech_instance[0].public_ip
}


# Output - For Loop with List
output "for_output_list" {
  description = "For Loop with List"
  value = [for my_ec2 in aws_instance.tech_instance: my_ec2.public_dns ]
}


# Output - For Loop with Map
output "for_output_map1" {
  description = "For Loop with Map"
  value = {for instance in aws_instance.tech_instance: instance.id => instance.public_dns}
  
}

# output "for_output_map3" {
#   description = "For Loop with Map"
#   value = {for instance in aws_instance.tech_instance: instance.name => instance.public_ip}
#  }


# Output - For Loop with Map Advanced
output "for_output_map2" {
  description = "For Loop with Map - Advanced"
  value = {for c, instance in aws_instance.tech_instance: c => instance.public_dns}
}


# Output Legacy Splat Operator (latest) - Returns the List
output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Expression"
  value = aws_instance.tech_instance.*.public_dns
}  


# Output Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  description = "Generalized Splat Expression"
  value = aws_instance.tech_instance[*].public_dns
}
