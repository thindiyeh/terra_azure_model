variable "network_security_group_name" {
    type = "map"
}
variable "network_security_group_location" {}
variable "resource_group_name" {}

variable "network_security_group_count" {
    default = "0"
}

variable "wait_on" {}

variable "network_security_rule_parameters" {
    type = "map"
}

variable "network_security_rule_count" {
    default = "0"
}
