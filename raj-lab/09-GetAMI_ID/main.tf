provider "aws" {
  region = "us-east-2"  
}

data "aws_ami" "example" {
  most_recent = true


   filter {
    name   = "name"
    values = ["al2023-ami-*"]
   
  }
  filter {
    name = "platform-details"
    values = ["Linux/UNIX"]
   
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }  
 
}


output "ami_id" {
  description = "Information about the AMI"
  value = {
    name = data.aws_ami.example.name
    id = data.aws_ami.example.id
    description = data.aws_ami.example.description
    architecture = data.aws_ami.example.architecture
    owner_alias = data.aws_ami.example.image_owner_alias
    platform_details = data.aws_ami.example.platform_details
  }
}


