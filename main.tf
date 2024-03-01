#BUCKET-CREATION
module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "sameekshasbucket"
  tags=var.tags
}

# ROLE
module "iam_role" {
  source            = "./modules/iam_role"
   
  assume_role_policy = file("role.json")
}

module "lambda" {
  source            = "./modules/lambda"
  s3_bucket_arn     = module.s3_bucket.arn
  role_arn          = module.iam_role.arn
  role_arn_name=    module.iam_role.arn_role_name
  lambda_filename   = "${path.module}/python/lambda.zip"
  lambda_function_name ="lambda_terraform3"
  lambda_handler    = "lambda.lambda_handler"
  lambda_runtime    = "python3.8"
  source_dir        = "${path.module}/python/"
  output_path       = "${path.module}/python/lambda.zip"
}
