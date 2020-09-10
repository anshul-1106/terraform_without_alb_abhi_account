resource "aws_ecs_cluster" "langtool_cluster" {
  name = "${var.name}"
}

resource "aws_ecs_task_definition" "langtool_runner" {
  family                   = "${var.name}-langtool_runner"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "${var.ecs_cpu}"
  memory                   = "${var.ecs_memory}"
  task_role_arn            = "${aws_iam_role.ecs_task_execution.arn}"
  execution_role_arn       = "${aws_iam_role.ecs_task_execution.arn}"
  container_definitions    = "${file("${var.task_definition_file}")}"
}
