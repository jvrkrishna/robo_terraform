module "instance" {
  for_each = var.component
  source = "git::https://github.com/jvrkrishna/robo_terraform_module.git"
  env = var.env
  component = each.key
}