variable "resource_group_name" {
    default = "Images"
}

variable "resource_group_location" {
    default = "EAST US2"
}

variable "virtual_network_name" {
    default = "imagevn1"
}

variable "virtual_network_address_space" {
    default = "10.0.0.0/16"
}

variable "subnet_name" {
    default = "imagesub1"
}

variable "subnet_address_prefix" {
    default = "10.0.1.0/24"
}

variable "network_security_group_count" {
    default = 2
}

variable "network_security_group_name" {
    default = {
        "1" = "SSH-Only"
        "2" = "RDP-Only"
    }
}

variable "network_security_rule_count" {
    default = 2
}

variable "network_security_rule_parameters" {
    default = {
        "1-name" = "test1"
        "1-priority" = "100"
        "1-direction" = "Inbound"
        "1-access" = "Allow"
        "1-protocol" = "TCP"
        "1-source_port_range" = "*"
        "1-destination_port_range" = "*"
        "1-source_address_prefix" = "*"
        "1-destination_address_prefix" = "*"
        "1-network_security_group_name" = "SSH-Only"

        "2-name" = "test2"
        "2-priority" = "100"
        "2-direction" = "Outbound"
        "2-access" = "Allow"
        "2-protocol" = "TCP"
        "2-source_port_range" = "*"
        "2-destination_port_range" = "*"
        "2-source_address_prefix" = "*"
        "2-destination_address_prefix" = "*"
        "2-network_security_group_name" = "RDP-Only"
    }
}
