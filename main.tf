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

    subnet_name = "${var.subnet_name}"
    subnet_address_prefix = "${var.subnet_address_prefix}"
}
