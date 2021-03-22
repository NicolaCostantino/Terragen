# Task

resource "aws_ecs_task_definition" "task" {
  # Name of the task
  family                   = "hello-task"
  container_definitions    = data.template_file.container.rendered
  # Using ECS Fargate
  requires_compatibilities = ["FARGATE"]
  # Using awsvpc as network mode - required for Fargate
  network_mode             = "awsvpc"
  # Specifying the memory for the container
  memory                   = var.task_memory
  # Specifying the CPU for the container
  cpu                      = var.task_cpu
  # Execution role ARN (Amazon Resource Name)
  execution_role_arn       = aws_iam_role.ecsTaskExecutionRole.arn
}