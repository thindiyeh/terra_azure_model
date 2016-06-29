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
