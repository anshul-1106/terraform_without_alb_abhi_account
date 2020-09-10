resource "aws_cloudwatch_log_group" "langtool_logs" {
  name = "${var.log_group}"
}
