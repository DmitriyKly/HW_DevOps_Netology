variable "ip_address" {
  description = "ip-address"
  type        = string
  default = "192.168.0.1"
  validation {
    condition     = can(regex("^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$", var.ip_address))
    error_message = "wrong ip-address"
  }
}

variable "ip_address_list" {
  description = "list of IP addresses"
  type        = list(string)
  default     = ["192.168.0.1", "1.1.1.1", "127.0.0.1"]
  validation {
    condition = alltrue([for ip in var.ip_address_list: can(regex("^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$", ip))])
    error_message = "incorrect list of IP addresses"
  }
}