resource "aws_ecs_service" "hello_service" {
  # Name of the service
  name            = "hello-service"
  # Referencing the Cluster
  cluster         = aws_ecs_cluster.cluster.id
  # Referencing the task that this service will spin up
  task_definition = aws_ecs_task_definition.task.arn
  # Using Fargate
  launch_type     = "FARGATE"
  # Setting the number of containers to be deployed to 3
  desired_count   = var.service_container_count

  load_balancer {
    # Referencing the target group
    target_group_arn = var.service_load_balancer_target_group_arn
    # Referencing the containers' family
    container_name   = var.service_container_name
    # Specifying the container port
    container_port   = var.service_container_port
  }

  network_configuration {
    subnets          = var.service_network_configuration_subnets
    # Providing the containers with public IPs
    assign_public_ip = var.service_assign_public_ip
    # Setting the security group
    security_groups  = var.service_network_configuration_security_groups
  }
}