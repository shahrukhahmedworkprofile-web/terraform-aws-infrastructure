variable "key_name" {
  description = "AWS EC2 key pair name"
  type        = string
}

variable "private_key_path" {
  description = "Local path for the generated private key"
  type        = string
}