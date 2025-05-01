
output "nat_instance_public_ip" {
  value = yandex_compute_instance.nat_instance.network_interface[0].nat_ip_address
  description = "Public IP address of NAT instance"
}


output "public_instance_public_ip" {
  value = yandex_compute_instance.public_instance.network_interface[0].nat_ip_address
  description = "Public IP address of public instance"
}

output "public_instance_private_ip" {
  value = yandex_compute_instance.public_instance.network_interface[0].ip_address
  description = "Private IP address of public instance"
}


output "private_instance_private_ip" {
  value = yandex_compute_instance.private_instance.network_interface[0].ip_address
  description = "Private IP address of private instance"
}


output "public_instance_fqdn" {
  value = yandex_compute_instance.public_instance.fqdn
  description = "FQDN of public instance"
}

output "private_instance_fqdn" {
  value = yandex_compute_instance.private_instance.fqdn
  description = "FQDN of private instance"
}

output "nat_instance_fqdn" {
  value = yandex_compute_instance.nat_instance.fqdn
  description = "FQDN of NAT instance"
}