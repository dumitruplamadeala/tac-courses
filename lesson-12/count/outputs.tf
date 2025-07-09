# Add your output code here!
output "pub_ips" {
  description = "public ip addresses"
  value       = aws_instance.count_lab[*].public_ip

  }