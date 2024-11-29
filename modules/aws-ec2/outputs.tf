# Output for EC2 Instance ID
output "bastion_host_instance_id" {
  value       = module.ec2_public.id
  description = "The ID of the bastion host EC2 instance."
}

# Output for EC2 Instance Public IP
output "bastion_host_public_ip" {
  value       = module.ec2_public.public_ip
  description = "The public IP address of the bastion host EC2 instance."
}

# Output for EC2 Instance Private IP
output "bastion_host_private_ip" {
  value       = module.ec2_public.private_ip
  description = "The private IP address of the bastion host EC2 instance."
}

# Output for Elastic IP Allocation ID
output "bastion_host_eip_allocation_id" {
  value       = aws_eip.bastion_host_eip.id
  description = "The allocation ID of the Elastic IP associated with the bastion host."
}

# Output for Elastic IP Address
output "bastion_host_eip" {
  value       = aws_eip.bastion_host_eip.public_ip
  description = "The Elastic IP address of the bastion host."
}
