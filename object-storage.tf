resource "ibm_object_storage_account" "lamp_storage" {
  count = "${var.object_storage_enabled}"
}

variable "object_storage_enabled" {
    default = 1
}