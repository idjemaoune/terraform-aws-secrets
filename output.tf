output "aws_secretsmanager_secret_id" {
  description = "Aws secretsmanager secret id."
  value       = aws_secretsmanager_secret.secret.id
}
