

resource "aws_iam_role" "lambda_role" {
  name   ="sameekshasrole"
  assume_role_policy = var.assume_role_policy
}
