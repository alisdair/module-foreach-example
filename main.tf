module "users" {
  for_each = var.user-types
  source = "./modules/user"
  subscriptions = var.subscriptions
  group = each.value.group
  users = each.value.users
}
