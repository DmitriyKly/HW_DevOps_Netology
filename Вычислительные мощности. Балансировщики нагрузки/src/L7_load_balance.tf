

resource "yandex_alb_http_router" "lamp-router" {
  name = "lamp-router"
}

resource "yandex_alb_backend_group" "lamp-backend" {
  name = "lamp-backend"

  http_backend {
    name             = "lamp-http-backend"
    weight           = 1
    port             = 80
    target_group_ids = [yandex_alb_target_group.lamp-target-group.id]

    healthcheck {
      timeout             = "1s"
      interval            = "3s"
      healthy_threshold   = 2
      unhealthy_threshold = 2
      http_healthcheck {
        path = "/"
      }
    }
  }
}

resource "yandex_alb_virtual_host" "lamp-host" {
  name           = "lamp-host"
  http_router_id = yandex_alb_http_router.lamp-router.id

  route {
    name = "lamp-route"
    http_route {
      http_route_action {
        backend_group_id = yandex_alb_backend_group.lamp-backend.id
      }
    }
  }
}

resource "yandex_alb_load_balancer" "lamp-alb" {
  name        = "lamp-alb"
  network_id  = yandex_vpc_network.network.id

  allocation_policy {
    location {
      zone_id   = "ru-central1-a"
      subnet_id = yandex_vpc_subnet.public-subnet.id
    }
  }

  listener {
    name = "http-listener"
    endpoint {
      address {
        external_ipv4_address {}
      }
      ports = [80]
    }
    http {
      handler {
        http_router_id = yandex_alb_http_router.lamp-router.id
      }
    }
  }
}

output "alb_ip_address" {
  value = yandex_alb_load_balancer.lamp-alb.listener[0].endpoint[0].address[0].external_ipv4_address[0].address
}