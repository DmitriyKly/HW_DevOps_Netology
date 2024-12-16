locals {
  web_vm_name = "${var.vm_name}-${var.name_db}"
  web_db_name = "${var.vm_name}-${var.name_web}"
}