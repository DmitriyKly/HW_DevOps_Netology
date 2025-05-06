resource "yandex_vpc_subnet" "public-a" {
  name           = "public-subnet-a"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.40.0/24"]
}

resource "yandex_vpc_subnet" "public-b" {
  name           = "public-subnet-b"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.50.0/24"]
}

resource "yandex_vpc_subnet" "public-d" {
  name           = "public-subnet-d"
  zone           = "ru-central1-d"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.60.0/24"]
}

resource "yandex_iam_service_account" "k8s-sa" {
  name        = "k8s-service-account"
  description = "Service account for Kubernetes cluster"
}

resource "yandex_resourcemanager_folder_iam_binding" "k8s-cluster-admin" {
  folder_id = "b1gosn6u3uo6jds5fd2p"
  role      = "k8s.clusters.agent"
  members   = [
    "serviceAccount:${yandex_iam_service_account.k8s-sa.id}"
  ]
}

resource "yandex_resourcemanager_folder_iam_binding" "vpc-public-admin" {
  folder_id = "b1gosn6u3uo6jds5fd2p"
  role      = "vpc.publicAdmin"
  members   = [
    "serviceAccount:${yandex_iam_service_account.k8s-sa.id}"
  ]
}

resource "yandex_kms_symmetric_key" "k8s-key" {
  name              = "k8s-encryption-key"
  default_algorithm = "AES_256"
  rotation_period   = "8760h"
}

resource "yandex_kubernetes_cluster" "netology-k8s" {
  name       = "netology-k8s-cluster"
  network_id = yandex_vpc_network.network.id
  
  master {
    regional {
      region = "ru-central1"
      location {
        zone      = "ru-central1-a"
        subnet_id = yandex_vpc_subnet.public-a.id
      }
      location {
        zone      = "ru-central1-b"
        subnet_id = yandex_vpc_subnet.public-b.id
      }
      location {
        zone      = "ru-central1-d"
        subnet_id = yandex_vpc_subnet.public-d.id
      }
    }
    public_ip = true
    
    maintenance_policy {
      auto_upgrade = true
      
      maintenance_window {
        start_time = "03:00"
        duration   = "3h"
      }
    }
  }
  
  service_account_id      = yandex_iam_service_account.k8s-sa.id
  node_service_account_id = yandex_iam_service_account.k8s-sa.id
  
  kms_provider {
    key_id = yandex_kms_symmetric_key.k8s-key.id
  }
  
  depends_on = [
    yandex_resourcemanager_folder_iam_binding.k8s-cluster-admin,
    yandex_resourcemanager_folder_iam_binding.vpc-public-admin
  ]
}

resource "yandex_kubernetes_node_group" "netology-node-group" {
  cluster_id  = yandex_kubernetes_cluster.netology-k8s.id
  name        = "netology-node-group"
  version     = "1.29"
  
  scale_policy {
    auto_scale {
      min     = 3
      max     = 6
      initial = 3
    }
  }
  
  allocation_policy {
    location {
      zone = "ru-central1-a"
    }
  }
  
  instance_template {
    platform_id = "standard-v2"
    
    resources {
      memory = 4
      cores  = 2
    }
    
    boot_disk {
      type = "network-ssd"
      size = 64
    }
    
    network_interface {
      nat        = true
      subnet_ids = [yandex_vpc_subnet.public-a.id]
    }
  }
}

output "k8s_external_v4_endpoint" {
  value = yandex_kubernetes_cluster.netology-k8s.master[0].external_v4_endpoint
}

output "mysql_hosts" {
  value = yandex_mdb_mysql_cluster.netology-mysql.host.*.fqdn
}