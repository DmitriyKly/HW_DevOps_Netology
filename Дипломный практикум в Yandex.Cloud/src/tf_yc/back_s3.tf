terraform {
  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket                      = "tf-state-bucket-dmitriykl"
    region                      = "ru-central1"
    key                         = "terraform.tfstate"
    access_key                  = "YCAJE60HZQ3KjSmVmDjSN"
    secret_key                  = "YCPZJaO2WWlRTgedWaZrYTmmHIgEXH19Z"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
    skip_requesting_account_id  = true
  }
}