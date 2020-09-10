resource "aws_ecs_service" "langtool-service" {
  name                                = "langtool-service"
  cluster                             = "${aws_ecs_cluster.langtool_cluster.arn}"
  task_definition                     = "${aws_ecs_task_definition.langtool_runner.arn}"
  desired_count                       = 2
  launch_type                         = "FARGATE"
	platform_version                    = "LATEST"
  deployment_maximum_percent          = 200
  deployment_minimum_healthy_percent  = 100

  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:eu-central-1:333231512245:targetgroup/TestTargetGroup/7024eeb17d7f0baa"
    container_name   = "langtool_container"
    container_port   = 8080
  }

  network_configuration {
    subnets           = "${var.subnets}"
    security_groups   = ["sg-0875f415ab2fb4780"]
    assign_public_ip  = true

  }
}
