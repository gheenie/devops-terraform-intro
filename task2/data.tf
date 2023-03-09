data "aws_region" "current_region" {}

data "aws_caller_identity" "current_acc" {}

data "archive_file" "demo_code" {
    type = "zip"
    source_file = "${path.module}/demo.py"
    output_file_mode = "0666"
    output_path = "${path.module}/demo.zip"
}