variable "resource_group_name" {}
variable "network_security_rule_parameters" {
    type = "map"
}
variable "network_security_rule_count" {
    default = "0"
}
