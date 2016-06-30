module "resource_group" {
    source = "./resource_group"
    resource_group_name = "${var.resource_group_name}"
    resource_group_location = "${var.resource_group_location}"
}

module "virtual_network" {
    source = "./virtual_network"
    virtual_network_name = "${var.virtual_network_name}"
    virtual_network_address_space = "${var.virtual_network_address_space}"
    virtual_network_location = "${module.resource_group.rg_location}"
    resource_group_name = "${module.resource_group.rg_name}"
    wait_on = "${module.resource_group.rg_name}"
}

module "subnet" {
    source = "./subnet"
    subnet_name = "${var.subnet_name}"
    subnet_address_prefix = "${var.subnet_address_prefix}"
    resource_group_name = "${module.resource_group.rg_name}"
    virtual_network_name = "${module.virtual_network.vn_name}"
    wait_on = "${module.virtual_network.vn_name}"
}

module "network_security" {
    source = "./network_security"
    network_security_group_name = "${var.network_security_group_name}"
    network_security_group_location = "${module.resource_group.rg_location}"
    resource_group_name = "${module.resource_group.rg_name}"
    network_security_group_count = "${var.network_security_group_count}"
    network_security_rule_parameters = "${var.network_security_rule_parameters}"
    network_security_rule_count = "${var.network_security_rule_count}"    
    wait_on = "${module.resource_group.rg_name}"
}

