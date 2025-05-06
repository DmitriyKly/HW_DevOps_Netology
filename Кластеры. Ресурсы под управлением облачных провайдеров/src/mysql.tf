resource "yandex_mdb_mysql_database" "netology_db" {
  cluster_id = yandex_mdb_mysql_cluster.netology-mysql.id
  name       = "netology_db"
}

resource "yandex_mdb_mysql_user" "netology_user" {
  cluster_id = yandex_mdb_mysql_cluster.netology-mysql.id
  name       = "netology_user"
  password   = "Qwe1234567890"

  permission {
    database_name = yandex_mdb_mysql_database.netology_db.name
    roles         = ["ALL"]
  }
}
resource "yandex_mdb_mysql_cluster" "netology-mysql" {
  name                = "netology-mysql-cluster"
  environment         = "PRESTABLE"
  network_id          = yandex_vpc_network.network.id
  version             = "8.0"
  deletion_protection = true

  resources {
    resource_preset_id = "b1.medium"
    disk_type_id      = "network-ssd"
    disk_size         = 20
  }

  maintenance_window {
    type = "ANYTIME"
  }

  backup_window_start {
    hours   = 23
    minutes = 59
  }

  host {
    zone      = "ru-central1-a"
    subnet_id = yandex_vpc_subnet.private_subnet_a.id
  }

  host {
    zone      = "ru-central1-b"
    subnet_id = yandex_vpc_subnet.private_subnet_b.id
  }

  }