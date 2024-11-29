resource "aws_vpc" "main_vpc" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy

enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "dev"
  }
}



# # Public Subnet
# resource "aws_subnet" "public_subnet" {
#   vpc_id                  = aws_vpc.main_vpc.id
#   cidr_block              = var.public_subnet_ids_a
#   map_public_ip_on_launch = true
#   availability_zone       = "us-east-1a" # Specify an availability zone
#   tags = {
#     Name = "public-subnet"
#   }
# }

# # Private Subnet
# resource "aws_subnet" "private_subnet" {
#   vpc_id            = aws_vpc.main_vpc.id
#   cidr_block        = var.private_subnet_ids_a
#   availability_zone = "us-east-1a" # Specify an availability zone
#   tags = {
#     Name = "private-subnet"
#   }
# }

# resource "aws_subnet" "public_subnet_b" {
#   vpc_id                  = aws_vpc.main_vpc.id
#   cidr_block              = var.public_subnet_ids_b
#   map_public_ip_on_launch = true
#   availability_zone       = "us-east-1b" # Specify an availability zone
#   tags = {
#     Name = "public-subnet"
#   }
# }

# Private Subnet
# resource "aws_subnet" "private_subnet_b" {
#   vpc_id            = aws_vpc.main_vpc.id
#   cidr_block        = var.private_subnet_ids_b
#   availability_zone = "us-east-1b" # Specify an availability zone
#   tags = {
#     Name = "private-subnet"
#   }
# }

# Internet Gateway for Public Subnet
# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.main_vpc.id
#   tags = {
#     Name = "main-igw"
#   }
# }

# Route Table for Public Subnet
# resource "aws_route_table" "public_route_table" {
#   vpc_id = aws_vpc.main_vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }
#   tags = {
#     Name = "public-route-table"
#   }
# }

# Associate Public Route Table with Public Subnet
# resource "aws_route_table_association" "public_rt" {
#   subnet_id      = aws_subnet.public_subnet.id
#   route_table_id = aws_route_table.public_route_table.id
# }

# Route Table for Public Subnet
# resource "aws_route_table" "public_route_table_b" {
#   vpc_id = aws_vpc.main_vpc.id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }
#   tags = {
#     Name = "public-route-table-b"
#   }
# }

# Associate Public Route Table with Public Subnet
# resource "aws_route_table_association" "public_rtv" {
#   subnet_id      = aws_subnet.public_subnet_b.id
#   route_table_id = aws_route_table.public_route_table_b.id
# }