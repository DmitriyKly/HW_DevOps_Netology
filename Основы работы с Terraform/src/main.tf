resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.image_ubuntu_22
}


resource "yandex_compute_instance" "platform" {
  name        = local.web_vm_name
  platform_id = var.vm_web_platform
  resources {
  /*   cores         = var.vm_web_core
    memory        = var.vm_web_ram
    core_fraction = var.vm_web_fraction */

  cores = var.vms_resources["web"].cores
  memory = var.vms_resources["web"].memory
  core_fraction = var.vms_resources["web"].core_fraction

  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_web_nat
  }

/*   metadata = {
    serial-port-enable = var.vm_web_serial_port
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  } */

  metadata = var.metadata

}

resource "yandex_compute_instance" "platform-db" {
  name        = local.web_db_name
  platform_id = var.vm_db_platform
  resources {
 /*    cores         = var.vm_db_core
    memory        = var.vm_db_ram
    core_fraction = var.vm_db_fraction */
  
  cores = var.vms_resources["db"].cores
  memory = var.vms_resources["db"].memory
  core_fraction = var.vms_resources["db"].core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_db_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = var.vm_db_nat
  }

   metadata = var.metadata
 /*  metadata = {
    serial-port-enable = var.vm_db_serial_port
    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
  } */

}