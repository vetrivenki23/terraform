#create vpc

resource "aws_vpc" "vpc-module" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

#create pub subnet

resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vpc-module.id
    cidr_block = var.public_subnet_cidr
    tags = {
        Name =var.public_subnet_name
    }
}


# create private subnet

resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.vpc-module.id
    cidr_block = var.private_subnet_cidr
    tags = {
        Name =var.private_subnet_name
    }
}

#create internet gateway

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc-module.id
    tags = {
        Name = var.igw_name
    }
}

#elastic IP

resource "aws_eip" "eip" {
    domain = "vpc"
}

#create NAT gateway

resource "aws_nat_gateway" "ngw" {     
    allocation_id = aws_eip.eip.id
    subnet_id = aws_subnet.public_subnet.id
    tags = {
        Name = var.nat_name
    }
}

#create a public routing table  - include VPC ID  

resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.vpc-module.id
   # Add route (IP) to IGW 
   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
   }
    tags = {
        Name=var.public_rt_name
    }
}

# Associate public Subnet to route table 

resource "aws_route_table_association" "public_rt_assoc" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public_rt.id
}

#create a private routing table  - include VPC ID
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.vpc-module.id
    # Add route (IP) to Nat-GW
   route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw.id
   }
    tags = {
        Name=var.private_rt_name
    }
}

# Associate private Subnet to route table 
resource "aws_route_table_association" "private_rt_assoc" {
    subnet_id = aws_subnet.private_subnet.id
    route_table_id  = aws_route_table.private_rt.id
}















