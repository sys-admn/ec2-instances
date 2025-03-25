output "public_ip" {
  description = "Adresse IP publique de l'instance"
  value       = aws_instance.my_instance.public_ip
}

output "private_ip" {
  description = "Adresse IP privée de l'instance"
  value       = aws_instance.my_instance.private_ip
}