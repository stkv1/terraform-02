###cloud vars


variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_image_family" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_web_name" {
  type = string
  default = "netology-develop-platform-web"
  #default = local.name-web
}

# Задание 6
variable "vms_resources" {
  description = "Параметры, отличающиеся для инстансов"
  type = map(object({
    vm_name     = string
    vm_cores    = number
    vm_memory   = number
    vm_fraction = number
  }))

  default = {
    "web-vm" = {
      vm_name     = "netology-develop-platform-web"
      vm_cores    = 2
      vm_memory   = 1
      vm_fraction = 20
    }
    "db-vm" = {
      vm_name     = "netology-develop-platform-db"
      vm_cores    = 4
      vm_memory   = 2
      vm_fraction = 50
    }
  }
}

# Задание 6
variable "vms_metadata" {
  description = "Параметры, одинаковые для инстансов"
  type      = object({
    serial-port-enable = number,
    ssh-key = string
  })
  default = {
    serial-port-enable = 1,
    ssh-key = "~/.ssh/ssh-key-ya-cloud-2026.pub"
  }
}
    

/*variable "vm_web_cores" {
  type = number
  default = 2
}*/

/*variable "vm_web_memory" {
  type = number
  default = 1
}*/

/*variable "vm_web_fraction" {
  type = number
  default = 20
}*/

variable "vm_preemptible" {
  type = bool
  default = true
}

variable "vm_nat" {
  type = bool
  default = true
}

###ssh vars

/*variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSL944uLWrUcD/mN0ZDp3ayhOT282Tc4V3DcWHl7Ab/VtlX5LvmilHXh4CMr+vXpf07GmeRH+l/P8GQUfPM9Ab9d28NKtV7YbGALYYlowr/bClmb3PFDIMTfLx1gBAbKk+p2ReQ0b3Yl2nG8nS/1Co+BIPY++M6GktYpylkd4ioe5CgS3jByqvPkzxqQZYfq1IRJG1DKtFXUQ2D70dhKz73ct9jxJdKqVSUGe/YvVVbT3d7iMblkyQgqZdluhJDJzvl47eAyEXueu+KlAKXgdI6m9e3z2pASmKapa9qU4BJ7muc9GKpiVBNWyzTXqhET4N+vQVO7jHWvRh5+CwwKOD"
  description = "ssh-keygen -t ed25519"
}*/

# переменные для использования в блоке locals (задание 5)
variable "stage" {
  type = string
  default = "develop"
}

variable "platform" {
  type = string
  default = "platform"
}

variable "role-web"{
  type = string
  default = "web"
}

variable "role-db"{
  type = string
  default = "db"
}