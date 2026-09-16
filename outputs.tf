output "public_ec2_public_ip" {
  description = "Public IP address of the public EC2"
  value       = module.ec2.public_ec2_public_ip
}

output "private_ec2_private_ip" {
  description = "Private IP address of the private EC2"
  value       = module.ec2.private_ec2_private_ip
}

output "bastion_public_ip" {
  description = "Public IP address of the bastion host"
  value       = module.ec2.bastion_public_ip
}

output "ssh_private_key_path" {
  description = "Local path to the generated SSH private key"
  value       = module.key_pair.private_key_path
}