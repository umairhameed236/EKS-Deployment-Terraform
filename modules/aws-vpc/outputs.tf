# Output for VPC ID
output "vpc_id" {
  value       = aws_vpc.main_vpc.id
  description = "The ID of the VPC"
}

# Output for VPC CIDR Block
# output "vpc_cidr_block" {
#   value       = aws_vpc.main_vpc.cidr_block
#   description = "The CIDR block of the VPC"
# }

# Output for Public Subnet ID
# output "public_subnet_id" {
#   value       = [aws_subnet.public_subnet.id]
#   description = "The ID of the public subnet"
# }

# # # Output for Public Subnet CIDR Block
# # output "public_subnet_cidr_block" {
# #   value       = aws_subnet.public_subnet.cidr_block
# #   description = "The CIDR block of the public subnet"
# # }

# # Output for Private Subnet ID
# output "private_subnet_id_b" {
#   value       = aws_subnet.private_subnet_b.id
#   description = "The ID of the private subnet"
# }

# output "public_subnet_id_b" {
#   value       = aws_subnet.public_subnet_b.id
#   description = "The ID of the public subnet"
# }

# # # Output for Public Subnet CIDR Block
# # output "public_subnet_cidr_block" {
# #   value       = aws_subnet.public_subnet.cidr_block
# #   description = "The CIDR block of the public subnet"
# # }

# # Output for Private Subnet ID
# output "private_subnet_id" {
#   value       =aws_subnet.private_subnet[*].id
#   description = "The ID of the private subnet"
# }

# # Output for Private Subnet CIDR Block
# output "private_subnet_cidr_block" {
#   value       = aws_subnet.private_subnet.cidr_block
#   description = "The CIDR block of the private subnet"
# }

# # Output for Internet Gateway ID
# output "internet_gateway_id" {
#   value       = aws_internet_gateway.igw.id
#   description = "The ID of the Internet Gateway"
# }

# # Output for Public Route Table ID
# output "public_route_table_id" {
#   value       = aws_route_table.public_route_table.id
#   description = "The ID of the public route table"
# }
