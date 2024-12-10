output "external_ip_address_web" {
  value = yandex_compute_instance.platform.network_interface.0.nat_ip_address
}
output "instance_name_web" {
  value = yandex_compute_instance.platform.name
}
output "instance_fqdn_web" {
  value = yandex_compute_instance.platform.fqdn
}

output "external_ip_address_db" {
  value = yandex_compute_instance.platform-db.network_interface.0.nat_ip_address
}
output "instance_name_db" {
  value = yandex_compute_instance.platform-db.name
}
output "instance_fqdn_db" {
  value = yandex_compute_instance.platform-db.fqdn
}