variable "myami" {
    type = string
    description = "Enter AMI ID"
     default = "ami-069d73f3235b535bd"     
}

variable "ec2_instance_type" {
    type = string
    description = "EC2-Instance"
    default = "t2.micro"
}

variable "mykeypair" {
    type = string
    description = "my-Key-Pair"
    default = "raj-keypair-ohio"
}

variable "ec2_instance_count" {
    type = string
    description = "EC2-Instance-Count"
    default = 1
}