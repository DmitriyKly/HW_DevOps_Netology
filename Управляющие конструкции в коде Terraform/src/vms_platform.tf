variable "image_ubuntu_22" {
  type        = string
  default     = "ubuntu-2204-lts"
  description = "Ubuntu_22_04"
}


variable "vm_web_platform" {
  type        = string
  default     = "standard-v3"
  description = "OS"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "preemptible"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "nat"
}

variable "vm_web_serial_port" {
  type        = number
  default     = 1
  description = "serial_port"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "name_vm"
}

variable "vm_db_platform" {
  type        = string
  default     = "standard-v3"
  description = "OS"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "preemptible"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "nat"
}

variable "vm_db_serial_port" {
  type        = number
  default     = 1
  description = "serial_port"
}