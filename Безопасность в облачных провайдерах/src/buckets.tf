resource "yandex_iam_service_account" "bucket-sa" {
  name        = "bucket-service-account"
  description = "Service account for bucket management"
}

resource "yandex_iam_service_account_static_access_key" "bucket-sa-key" {
  service_account_id = yandex_iam_service_account.bucket-sa.id
  description        = "Static access key for bucket"
}

resource "yandex_resourcemanager_folder_iam_binding" "bucket-editor" {
  folder_id = "b1gosn6u3uo6jds5fd2p"
  role      = "storage.admin"
  members   = [
    "serviceAccount:${yandex_iam_service_account.bucket-sa.id}"
  ]
}

resource "yandex_kms_symmetric_key" "bucket-key" {
  name              = "bucket-encryption-key"
  description       = "Encryption key for student bucket"
  default_algorithm = "AES_256"
  rotation_period   = "8760h"
}

resource "yandex_storage_bucket" "student_bucket" {
  bucket     = "student-name-02052025"
  access_key = yandex_iam_service_account_static_access_key.bucket-sa-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.bucket-sa-key.secret_key
  force_destroy = false

    server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = yandex_kms_symmetric_key.bucket-key.id
        sse_algorithm     = "aws:kms"
      }
    }
  }


  anonymous_access_flags {
    read = true
    list = false
  }
  
  depends_on = [
    yandex_kms_symmetric_key.bucket-key,
    yandex_storage_bucket.student_bucket
  ]
}

# Загрузка изображения в бакет
resource "yandex_storage_object" "image" {
  bucket       = yandex_storage_bucket.student_bucket.bucket

  key          = "image.jpg"
  source       = "/home/dmitriy/clopro-homeworks/15.3/helloworld.jpg"
  content_type = "image/jpeg"
  acl          = "public-read"

  depends_on = [
    yandex_storage_bucket.student_bucket
  ]
}
