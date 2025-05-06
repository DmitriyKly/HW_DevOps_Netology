terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.141.0"
    }
  }
}

provider "yandex" {
  folder_id                = "b1gosn6u3uo6jds5fd2p"
  cloud_id                 = "b1glp8u6n3mv8tv9fm8t"
  service_account_key_file = file("~/authorized_key.json")
  zone                     = "ru-central1-a"
  storage_endpoint         = "storage.yandexcloud.net"
}