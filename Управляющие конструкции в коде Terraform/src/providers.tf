terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.124.0"
    }
  }
  required_version = ">=1.8.4"
}

provider "yandex" {
  folder_id = ""
  cloud_id = ""
  service_account_key_file = file("~/authorized_key.json")
  zone                     = "ru-central1-a" #(Optional) 
}