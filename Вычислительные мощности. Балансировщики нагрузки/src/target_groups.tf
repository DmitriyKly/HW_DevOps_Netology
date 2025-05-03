resource "yandex_lb_target_group" "lamp-target-group" {
  name      = "lamp-target-group"
  region_id = "ru-central1"

  depends_on = [yandex_compute_instance_group.lamp-group]

  dynamic "target" {
    for_each = yandex_compute_instance_group.lamp-group.instances
    content {
      subnet_id  = yandex_vpc_subnet.public-subnet.id
      address    = target.value.network_interface[0].ip_address
    }
  }
}
resource "yandex_alb_target_group" "lamp-target-group" {
  name = "lamp-target-group"

  dynamic "target" {
    for_each = yandex_compute_instance_group.lamp-group.instances
    content {
      subnet_id  = yandex_vpc_subnet.public-subnet.id
      ip_address = target.value.network_interface[0].ip_address
    }
  }
}