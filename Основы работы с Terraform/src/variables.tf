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
  description = "VPC network & subnet name"
}


###ssh vars

/* variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPi340yBIazsXZLq00HquCyFNf2dnhQ05sKOy2t/7jff dmitriy@ubuntu01"
  description = "ssh-keygen -t ed25519"
} */

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
  }
}

variable "metadata" {
  type = map(string)
  default = {
    "serial-port-enable" = "1"
    "ssh-keys"           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPi340yBIazsXZLq00HquCyFNf2dnhQ05sKOy2t/7jff dmitriy@ubuntu01"
  }
}