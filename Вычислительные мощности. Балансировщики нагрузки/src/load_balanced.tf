resource "yandex_lb_network_load_balancer" "nlb" {
  name = "lamp-network-load-balancer"

  listener {
    name = "http-listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.lamp-target-group.id

    healthcheck {
      name                = "http-healthcheck"
      interval            = 2
      timeout             = 1
      unhealthy_threshold = 2
      healthy_threshold   = 2
      http_options {
        port = 80
        path = "/"
      }
    }
  }
}

output "nlb_ip_address" {
  value = yandex_lb_network_load_balancer.nlb.listener[*].external_address_spec[*].address
}
