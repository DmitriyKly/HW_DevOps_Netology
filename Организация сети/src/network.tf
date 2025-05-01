
resource "yandex_vpc_network" "vpc" {
  name = "vpc"
}


resource "yandex_vpc_subnet" "public" {
  name           = "public"
  v4_cidr_blocks = ["192.168.10.0/24"]
  zone           = var.default_zone
  network_id     = yandex_vpc_network.vpc.id
}


resource "yandex_vpc_subnet" "private" {
  name           = "private"
  v4_cidr_blocks = ["192.168.20.0/24"]
  zone           = var.default_zone
  network_id     = yandex_vpc_network.vpc.id
  route_table_id = yandex_vpc_route_table.private_route_table.id
}


resource "yandex_vpc_route_table" "private_route_table" {
  name       = "private-route-table"
  network_id = yandex_vpc_network.vpc.id

  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address  = "192.168.10.254"
  }
} 