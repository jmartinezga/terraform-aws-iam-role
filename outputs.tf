#https://www.terraform.io/language/values/outputs
output "role_name" {
  description = "Role name"
  value       = aws_iam_role.this.name
}

output "role_arn" {
  description = "Role arn"
  value       = aws_iam_role.this.arn
}
