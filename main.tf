module "test" {
  for_each = var.component
  source = "Git::https://github.com/jvrkrishna/robo_terraform_module.git"
  env = var.env
  component = each.key
}