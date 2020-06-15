variable "subscriptions" {
  type = set(string)
}

variable "operator-group" {
  type = string
}

variable "operator-users" {
  type = set(string)
}

variable "admin-group" {
  type = string
}

variable "admin-users" {
  type = set(string)
}
