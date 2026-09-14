locals {
  name-web = "netology-${ var.stage }-${ var.platform }-${ var.role-web }"
  name-db  = "netology-${ var.stage }-${ var.platform }-${ var.role-db }"

  # Переменные metadata для задания 6
  common_vars = {
    serial_port_enable = 1
    ssh_key = "~/.ssh/ssh-key-ya-cloud-2026.pub"
  }
}
