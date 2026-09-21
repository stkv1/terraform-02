resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "subnet_web" {
  name            = "subnet_web"
  network_id      = yandex_vpc_network.develop.id  # Ссылка на одну и ту же сеть
  zone            = var.default_zone             # Зона A
  v4_cidr_blocks         = var.default_cidr
}

resource "yandex_vpc_subnet" "subnet_db" {
  name            = "subnet_db"
  network_id      = yandex_vpc_network.develop.id  # Ссылка на одну и ту же сеть
  zone            = var.vm_db_zone                  # Зона B
  v4_cidr_blocks        = var.vm_db_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image_family
}

resource "yandex_compute_instance" "platform" {
  
  for_each = var.vms_resources
  #name        = var.vm_web_name
  name        = each.value.vm_name
  platform_id = "standard-v3"

  resources {
    cores         = each.value.vm_cores
    memory        = each.value.vm_memory
    core_fraction = each.value.vm_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_web.id
    nat       = var.vm_nat
  }
  metadata = {
    serial-port-enable = var.vms_metadata.serial-port-enable
    ssh-keys           = var.vms_metadata.ssh-key
  }

}

/*resource "yandex_compute_instance" "platform-db" {
  name        = var.vm_db_name
  platform_id = "standard-v3"
  zone        = var.vm_db_zone

  resources {
    cores         = vms_resources.db-vm.vm_cores
    memory        = vms_resources.db-vm.vm_memory
    core_fraction = vms_resources.db-vm.vm_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_db.id
    nat       = var.vm_nat
  }

}*/
