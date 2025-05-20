terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.141.0"
    }
  }
}

provider "yandex" {
  folder_id                = var.folder_id
  cloud_id                 = var.cloud_id
  service_account_key_file = file("~/authorized_key.json")
  zone                     = var.default_zone
  storage_endpoint         = "storage.yandexcloud.net"
}