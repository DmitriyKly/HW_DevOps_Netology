# Создание Instance Group с LAMP
resource "yandex_compute_instance_group" "lamp-group" {
  name               = "lamp-instance-group"
  folder_id          = "b1gosn6u3uo6jds5fd2p"
  service_account_id = "ajeb9tmpd5bps61jcar4"
  deletion_protection = false

  instance_template {
    platform_id = "standard-v3"
    resources {
      cores  = 2
      memory = 2
      core_fraction = 20
    }

    boot_disk {
      initialize_params {
        image_id = "fd827b91d99psvq5fjit" # LAMP образ
        size     = 10
      }
    }
    scheduling_policy {
        preemptible = true
    }

    network_interface {
      network_id = yandex_vpc_network.network.id
      subnet_ids = [yandex_vpc_subnet.public-subnet.id]
      nat        = true
      security_group_ids = [yandex_vpc_security_group.lamp-sg.id]
    }

metadata = {
  user-data = <<-EOF
    #cloud-config
    users:
      - name: ubuntu
        groups: sudo
        shell: /bin/bash
        sudo: 'ALL=(ALL) NOPASSWD:ALL'
        ssh_authorized_keys:
          - ${file("~/.ssh/id_rsa.pub")}

    write_files:
      - path: /var/www/html/index.html
        owner: www-data:www-data
        permissions: '0644'
        content: |
          <!DOCTYPE html>
          <html>
          <head>
              <title>LAMP Instance</title>
          </head>
          <body>
              <h1>Welcome to LAMP Instance</h1>
              <img src="https://${yandex_storage_bucket.student_bucket.bucket}.storage.yandexcloud.net/${yandex_storage_object.image.key}" alt="Image from bucket" width="500">
          </body>
          </html>
  EOF
}
  }

  scale_policy {
    fixed_scale {
      size = 3
    }
  }

  allocation_policy {
    zones = ["ru-central1-a"]
  }

  deploy_policy {
    max_unavailable = 1
    max_expansion   = 0
  }

  health_check {
    interval            = 5
    timeout             = 1
    unhealthy_threshold = 3
    healthy_threshold   = 2

    http_options {
      port = 80
      path = "/"
    }
  }
}