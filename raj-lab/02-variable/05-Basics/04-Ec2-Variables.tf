variable "myami" {
    type = string
    description = "AMI ID"
    default = "ami-0ccabb5f82d4c9af5"    
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