###cloud vars
variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform"
}

variable "image_id" {
  type        = string
  default     = "fd8sjjkgvcrbfbe4prfc"
  description = "Image"
}

variable "vms_resources" {
  type = map(object({
    cores        = number
    memory       = number
    core_fraction = number
  }))
  default = {
    web = {
      cores        = 2
      memory       = 2
      core_fraction = 20
    }
    db = {
      cores        = 2
      memory       = 2
      core_fraction = 20
    }
    storage = {
      cores        = 2
      memory       = 2
      core_fraction = 20  
  }
}
}

variable "metadata" {
  type = map(string)
  default = {
    "serial-port-enable" = "1"
    "ssh-keys"           = ""
  }
}

variable "vm_preemptible" {
  type        = bool
  default     = true
  description = "preemptible"
}