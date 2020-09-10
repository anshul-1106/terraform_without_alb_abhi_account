terraform destroy \
  -var 'name=langtool' \
  -var 'task_definition_file=container-definition-test.json' \
  -var 'vpc_id=vpc-04cb692de2c4a024f' \
  -var 'subnets=["subnet-08e12723aa95ec0ad","subnet-0b0b32e3e73f3d8fa"]' \
  -var 'log_group=/ecs/scheduled_task/langtool_support_run' \
