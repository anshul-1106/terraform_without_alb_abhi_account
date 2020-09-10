variable "name" {
    default= "langtool"
}

variable "ecs_cpu" {
  default = 2048
}

variable "ecs_memory" {
  default = 4096
}

variable "task_definition_file" {
}

variable "subnets" {
  type = "list"
}

variable "vpc_id" {
}

variable "log_group" {
default ="/ecs/scheduled_task/langtool_support_run"
}
