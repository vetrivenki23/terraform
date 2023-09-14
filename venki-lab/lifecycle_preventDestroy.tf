resource "aws_security_group" "example" {
  name = "example-sg"

  lifecycle {
    prevent_destroy = true
  }
}
