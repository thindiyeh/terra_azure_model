resource "azurerm_virtual_network" "vn" {
    name = "${var.virtual_network_name}"
    address_space = ["${var.virtual_network_address_space}"]
    location = "${var.virtual_network_location}"
    resource_group_name = "${var.resource_group_name}"
}
