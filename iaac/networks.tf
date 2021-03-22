module "network" {
  source = "./modules/terraform-aws-vpc"

  name = "hello"
  environment = var.general_environment
}