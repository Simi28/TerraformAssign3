output "arn" {
  value = aws_iam_role.lambda_role.arn
}
output "arn_role_name" {
  value = aws_iam_role.lambda_role.name
}