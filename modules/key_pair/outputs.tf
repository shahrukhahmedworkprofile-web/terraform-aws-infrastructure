output "key_name" {
  description = "AWS key pair name"
  value       = aws_key_pair.main.key_name
}

output "private_key_path" {
  description = "Local path to generated private key"
  value       = var.private_key_path
}