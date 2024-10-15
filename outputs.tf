# outputs.tf
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.autoprovisioned.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.autoprovisioned.public_ip
}

output "instance_type" {
  description = "The type of the EC2 instance"
  value       = aws_instance.autoprovisioned.instance_type
}