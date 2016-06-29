resource "azurerm_network_security_group" "nsec" {
    name = "${lookup (var.network_security_group_name, count.index + 1)}"
    location = "${var.network_security_group_location}"
    resource_group_name = "${var.resource_group_name}"
    count = "${var.network_security_group_count}"
}
