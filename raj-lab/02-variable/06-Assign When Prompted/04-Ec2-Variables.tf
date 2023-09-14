variable "myami" {
    type = string
    description = "Enter AMI ID" # this will be prompted at the login
    # default = "ami-069d73f3235b535bd" -- input
}

variable "my_instance_type" {
    type = string
    description = "EC2-Instance"
    default = "t2.micro"
}

variable "mykeypair" {
    type = string
    description = "my-Key-Pair"
    default = "raj-keypair-ohio"
}