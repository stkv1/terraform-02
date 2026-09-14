# Задание 4 - locals for output
locals {
  vm = [
    yandex_compute_instance.platform,
    yandex_compute_instance.platform-db
  ]
}
output "vm_inventory" {
  value = {
   instance_name = [for machine in local.vm : machine.name]
   fqdn          = [for machine in local.vm : machine.fqdn]
   external_ip   = [for machine in local.vm : machine.network_interface[0].nat_ip_address]
  }
}
