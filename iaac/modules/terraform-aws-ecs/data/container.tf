# Container

data "template_file" "container" {
  template = file("./container.json")
  vars = {
    app_name = var.container_app_name
    app_image = "${var.image_registry_url}/${var.container_app_image}"
    app_container_port = var.container_app_container_port
    app_host_port = var.container_app_host_port
    fargate_cpu = var.container_fargate_cpu
    fargate_memory = var.container_fargate_memory
    aws_region = var.container_aws_region
  }
}