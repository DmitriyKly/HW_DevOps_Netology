
variable "each_vm" {
  type = list(object({
    vm_name     = string
    hostname = string
    cpu         = number
    ram         = number
    core_fraction = number
    disk_volume = number
    image_id    = string
    platform_id = string
    zone = string
    preemptible = bool
    nat = bool

  }))
  
  default = [
    {
      vm_name     = "main"
      hostname = "main"
      cpu         = 4
      ram         = 6
      disk_volume = 30
      image_id    = "fd8sjjkgvcrbfbe4prfc"
      platform_id = "standard-v3"
      zone = "ru-central1-a"
      preemptible = true
      core_fraction = 20
      nat = true
    },
    {
      vm_name     = "replica"
      hostname = "replica"
      cpu         = 2
      ram         = 4
      disk_volume = 20
      image_id    = "fd8sjjkgvcrbfbe4prfc"
      platform_id = "standard-v3"
      zone = "ru-central1-a"
      preemptible = true
      core_fraction = 20
      nat = true
    },
  ]
}


resource "yandex_compute_instance" "db_vm" {
  for_each = { for vm in var.each_vm : vm.vm_name => vm }
  name = each.key
  zone = each.value.zone
  hostname = each.value.hostname
  platform_id = each.value.platform_id
  resources {
    cores  = each.value.cpu
    memory = each.value.ram
    core_fraction = each.value.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = each.value.image_id
      size = each.value.disk_volume
    }
  }
 scheduling_policy {
    preemptible = each.value.preemptible
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.example.id]
    nat = each.value.nat
  }
  
  metadata = {
    ssh-keys = "ubuntu:${local.ssh_public_key}"
  }
  depends_on = [yandex_compute_instance.web] 
}
