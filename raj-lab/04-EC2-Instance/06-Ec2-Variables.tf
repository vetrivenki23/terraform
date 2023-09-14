variable "myami" {
    type = string
    description = "AMI ID"
    default = "ami-069d73f3235b535bd"
    #default  = "ami-0473881890ccbff02"
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