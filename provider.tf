variable "softlayer_username" {
  description = "Your Bluemix Infrastructure (SoftLayer) user name."
}
variable "softlayer_api_key" {
  description = "Your Bluemix Infrastructure (SoftLayer) API key."
}

resource "ibm_object_storage_account" "IaC-object-storage" {
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key = "${var.softlayer_api_key}"
}

provider "ibm" {
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key = "${var.softlayer_api_key}"
}
