resource "azurerm_subnet" "sub" {
    name = "${var.subnet_name}"
    resource_group_name = "${var.resource_group_name}"
    virtual_network_name = "${azurerm_virtual_network.vn.name}"
    address_prefix = "${var.subnet_address_prefix}"
}
