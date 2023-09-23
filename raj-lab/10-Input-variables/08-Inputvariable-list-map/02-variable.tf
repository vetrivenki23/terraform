# String variable
variable "ec2_ami" {
  description = "A string variable"
  type        = string
  default     = "ami-01ca463d85a7b8110"
}

variable "my_ec2_instance" {
  type = string
  default = "raj-ec2-instance"  
}

# Number variable
variable "instance_count" {
  type = number
  default =3  
}

# Boolean variable
variable "enable_public_ip" {
  type = bool
  default = true
}

# List variable
variable "security_groups" {
  type = list(string) //accept duplicates
  default =["sg-09347d4a44df27c4c","sg-0fda4f1b27bbec3a1","sg-012c0cf4f82f5ef22"]  
}

#set variable
variable "availability_zones" {
  type = set(string) //non-duplicate values whereas list can accept dups
  default = ["us-east-1a","us-east-1b"]
}

# Map variable
variable "tags" {
  type = map(string)
  default = {
    Name="Raj-EC2"
    Environment="QA"
    Session="Tech_Learnings"
  }  
}

#object variable
variable "instance_type" {
  type = object({
    type = string
    cpu = number
    memory = number
    optimized = bool
  })
default ={
  type = "t2.micro"
  cpu =1
  memory =1
  optimized = false
 }
}


#Tuple variable
variable "subnet_info" {
  type = tuple([ string,bool ])
  default = ["subnet-03015b37b2e63fb82", true]
}
