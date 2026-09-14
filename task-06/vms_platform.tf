variable "vm_db_image_family" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_db_zone" {
  type = string
  default = "ru-central1-b"
}

variable "vpc_db_name" {
  type        = string
  default     = "db"
  description = "VPC DB subnet name"
}

variable "vm_db_cidr" {
  type        = list(string)
  default     = ["10.1.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_name" {
  type = string
  default = "netology-develop-platform-db"
}

variable "vm_db_cores" {
  type = number
  default = 2
}

variable "vm_db_memory" {
  type = number
  default = 2
}

variable "vm_db_fraction" {
  type = number
  default = 20
}

variable "vm_db_preemptible" {
  type = bool
  default = true
}

variable "vm_db_nat" {
  type = bool
  default = true
}
