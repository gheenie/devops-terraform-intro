resource "aws_lambda_function" "demo_lambda" {
    function_name = "demo-lambda"
    handler = "demo.handler"
    s3_bucket = aws_s3_bucket.demo_bucket.bucket
    s3_key = aws_s3_object.demo_object.key
    role = aws_iam_role.demo_role.arn
    runtime = "python3.9"
}

