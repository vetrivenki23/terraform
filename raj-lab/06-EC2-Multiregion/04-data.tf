data "aws_security_group" "east2_sg" {
  name = "web_sg"
}

# data "aws_security_group" "west2_sg" {
#   provider = aws.WEST-REGION
#   name = "web_sg"
# }