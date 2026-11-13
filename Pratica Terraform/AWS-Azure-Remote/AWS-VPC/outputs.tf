output "subnet_id" {
  description = "ID da Subnet"
  value       = aws_subnet.subnet.id
}

output "security_id" {

  description = "ID do security group"
  value       = aws_security_group.security_group.id

}