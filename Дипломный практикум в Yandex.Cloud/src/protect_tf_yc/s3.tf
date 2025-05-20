resource "yandex_iam_service_account" "bucket-tfstate-sa" {
  name        = "bucket-tfstate-service-account"
  description = "Service account for bucket management"

}

resource "yandex_iam_service_account_static_access_key" "bucket-tfstate-sa-key" {
  service_account_id = yandex_iam_service_account.bucket-tfstate-sa.id
  description        = "Static access key for bucket"

}

resource "yandex_resourcemanager_folder_iam_binding" "bucket-editor" {
  folder_id = var.folder_id
  role      = "storage.admin"
  members   = [
    "serviceAccount:${yandex_iam_service_account.bucket-tfstate-sa.id}"
  ]
}

resource "yandex_storage_bucket" "tf-state-bucket" {
  bucket     = "tf-state-bucket-dmitriykl"
  access_key = yandex_iam_service_account_static_access_key.bucket-tfstate-sa-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.bucket-tfstate-sa-key.secret_key
  force_destroy = false

  grant {
    type        = "CanonicalUser"
    permissions = ["FULL_CONTROL"]
    id          = yandex_iam_service_account.bucket-tfstate-sa.id
  }


  depends_on = [
    yandex_storage_bucket.tf-state-bucket
  ]
}