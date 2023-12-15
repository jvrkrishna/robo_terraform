module "instances" {
  for_each = var.component
  source = "git::https://github.com/jvrkrishna/robo_terraform_module.git"
  component= each.key
  env = var.env
}
