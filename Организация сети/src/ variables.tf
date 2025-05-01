### Cloud variables
variable "cloud_id" {
  type        = string
  description = "Cloud ID"
  default     = "b1glp8u6n3mv8tv9fm8t"
}

variable "folder_id" {
  type        = string
  description = "Folder ID"
  default     = "b1gosn6u3uo6jds5fd2p"
}

variable "default_zone" {
  type        = string
  description = "Default zone for resources"
  default     = "ru-central1-a"
}

### Network variables
variable "vpc_name" {
  type        = string
  description = "VPC network name"
  default     = "vpc"
}

variable "public_subnet" {
  type = object({
    name = string
    cidr = string
  })
  description = "Public subnet settings"
  default = {
    name = "public"
    cidr = "192.168.10.0/24"
  }
}

variable "private_subnet" {
  type = object({
    name = string
    cidr = string
  })
  description = "Private subnet settings"
  default = {
    name = "private"
    cidr = "192.168.20.0/24"
  }
}

### Instance variables
variable "nat_instance_ip" {
  type        = string
  description = "NAT instance IP address"
  default     = "192.168.10.254"
}

variable "nat_instance_image_id" {
  type        = string
  description = "NAT instance image ID"
  default     = "fd80mrhj8fl2oe87o4e1"
}

variable "public_instance_image_id" {
  type        = string
  description = "Public instance image ID"
  default     = "fd8emvfmfoaordspe1jr"  # Ubuntu 22.04 LTS
}

variable "instance_resources" {
  type = object({
    cores  = number
    memory = number
  })
  description = "Resources for instances"
  default = {
    cores  = 2
    memory = 2
  }
}

variable "ssh_key_path" {
  type        = string
  description = "Path to SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}