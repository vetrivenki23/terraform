#vpc name

variable  "vpc_name" {
    type = string
    description = "vpc-name"
    default = "raj-vpc"
}

#vpc cidr block
variable  "vpc_cidr_block" {
    type = string
    description = "vpc-CIDR"
    default = "10.0.0.0/16"
}

#pub subnet name 

variable  "public_subnet_name" {
    type = string
    description = "public-subnet"
    default = "raj-public-subnet1"
}
#pub subnet cidr block

variable  "public_subnet_cidr" {
    type = string
    description = "public-subnet-CIDR"
    default = "10.0.2.0/24"
}
#private suibnet name


variable  "private_subnet_name" {
    type = string
    description = "private-subnet"
    default = "raj-private-subnet1"
}

#private subnet cidr block
variable  "private_subnet_cidr" {
    type = string
    description = "private-subnet-CIDR"
    default = "10.0.201.0/24"
}

#internet gateway name
variable  "igw_name" {
    type = string
    description = "igw_name"
    default = "rajkumar-igw"
}

#NAT gateway name

variable  "nat_name" {
    type = string
    description = "nat_name"
    default = "rajkumar-nat"
}

#routing table name - Public

variable  "public_rt_name" {
    type = string
    description = "public route table name"
    default = "public-rt"
}
#routing table name - Private

variable  "private_rt_name" {
    type = string
    description = "private route table name"
    default = "private-rt"
}
