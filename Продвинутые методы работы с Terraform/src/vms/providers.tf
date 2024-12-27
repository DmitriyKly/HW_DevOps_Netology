terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
     required_version = ">=1.8.4"
}

provider "yandex" {
  # token                    = "do not use!!!"
  cloud_id                 = ""
  folder_id                = ""
  service_account_key_file = file("/home/dmitriy/authorized_key.json")
  zone                     = "ru-central1-a" #(Optional) 
}
