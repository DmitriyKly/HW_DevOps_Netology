resource "yandex_container_registry" "test-app-registry" {
  name      = "test-app-registry"
  folder_id = var.folder_id
}

resource "yandex_container_registry_iam_binding" "puller" {
  registry_id = yandex_container_registry.test-app-registry.id
  role        = "container-registry.images.puller"
  members     = [
    "system:allUsers",
  ]
}

resource "yandex_container_registry_iam_binding" "pusher" {
  registry_id = yandex_container_registry.test-app-registry.id
  role        = "container-registry.images.pusher"
  members     = [
    "system:allUsers",
  ]
}

output "registry_id" {
  value = yandex_container_registry.test-app-registry.id
}