variable "myami" {
    type = string
    description = "Enter AMI ID"
    default = "ami-069d73f3235b535bd" 
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

variable "ec2_instance_count" {
    type = string
    description = "EC2-Instance-Count"
    default = 1
}

#terraform plan -var="my_instance_type=t2.medium"
#terraform plan -var="my_instance_type=t2.medium" -var="ec2_instance_count=1"