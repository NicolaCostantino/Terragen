module "images_registry" {
  source      = "./modules/terraform-aws-ecr"

  name        = "hello"
  environment = var.general_environment
}