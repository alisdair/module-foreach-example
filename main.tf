module "user-operator" {
  source = "./modules/user"
  subscriptions = var.subscriptions
  group = var.operator-group
  users = var.operator-users
}

module "user-admin" {
  source = "./modules/user"
  subscriptions = var.subscriptions
  group = var.admin-group
  users = var.admin-users
}
