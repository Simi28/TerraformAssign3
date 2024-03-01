output "arn_role_name_root" {
    value=module.iam_role.arn_role_name
  
}
output "arn_role_arn_root1" {
    value=module.iam_role.arn
  
}

output "function_name" {
  value = module.lambda.function_name
}

output "bucket_name" {
  value = module.s3_bucket.bucket_name
}