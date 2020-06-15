variable "subscriptions" {
  type = set(string)
}

variable "user-types" {
  type = map(object({ group = string, users = set(string) }))
}
