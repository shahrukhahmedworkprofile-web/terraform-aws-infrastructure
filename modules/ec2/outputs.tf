output "public_ec2_public_ip" {
  description = "Public IP of the public EC2"
  value       = aws_instance.public.public_ip
}

output "public_ec2_private_ip" {
  description = "Private IP of the public EC2"
  value       = aws_instance.public.private_ip
}

output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "bastion_private_ip" {
  description = "Private IP of the bastion host"
  value       = aws_instance.bastion.private_ip
}

output "private_ec2_private_ip" {
  description = "Private IP of the private EC2"
  value       = aws_instance.private.private_ip
}

output "public_ec2_id" {
  description = "Public EC2 instance ID"
  value       = aws_instance.public.id
}

output "bastion_id" {
  description = "Bastion EC2 instance ID"
  value       = aws_instance.bastion.id
}

output "private_ec2_id" {
  description = "Private EC2 instance ID"
  value       = aws_instance.private.id
}