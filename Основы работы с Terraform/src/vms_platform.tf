variable "image_ubuntu_22" {
  type        = string
  default     = "ubuntu-2204-lts"
  description = "Ubuntu_22_04"
}

variable "vm_name" {
  type        = string
  default     = "netology-develop-platform"
  description = "name_vm"
}

variable "vm_web_platform" {
  type        = string
  default     = "standard-v3"
  description = "OS"
}

variable "name_web" {
  type        = string
  default     = "web"
  description = "name_vm"
}

/* variable "vm_web_core" {
  type        = number
  default     = 2
  description = "cores"
}

variable "vm_web_ram" {
  type        = number
  default     = 2
  description = "RAM"
}

variable "vm_web_fraction" {
  type        = number
  default     = 20
  description = "core_usage"
} */

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


variable "name_db" {
  type        = string
  default     = "db"
  description = "name_vm"
}

variable "vm_db_platform" {
  type        = string
  default     = "standard-v3"
  description = "OS"
}


/* variable "vm_db_core" {
  type        = number
  default     = 2
  description = "cores"
}

variable "vm_db_ram" {
  type        = number
  default     = 2
  description = "RAM"
}

variable "vm_db_fraction" {
  type        = number
  default     = 20
  description = "core_usage"
} */

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