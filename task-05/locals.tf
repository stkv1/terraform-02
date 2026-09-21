locals {
  name-web = "netology-${ var.stage }-${ var.platform }-${ var.role-web }"
  name-db  = "netology-${ var.stage }-${ var.platform }-${ var.role-db }"
}