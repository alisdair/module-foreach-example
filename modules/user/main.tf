variable "group" {
  type = string
}

variable "subscriptions" {
  type = set(string)
}

variable "users" {
  type = set(string)
}

locals {
  lines = [for user in var.users: "${user}: ${join(",", var.subscriptions)}\n"]
}

resource local_file "directory" {
  filename = "${var.group}.txt"
  content = join("", local.lines)
}
