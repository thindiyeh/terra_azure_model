resource "azurerm_network_security_rule" "nsecrule" {
    name = "${lookup (var.network_security_rule_parameters, format( "%d-name", count.index + 1))}"
    priority = "${lookup (var.network_security_rule_parameters, format( "%d-priority", count.index + 1))}"
    direction = "${lookup (var.network_security_rule_parameters, format( "%d-direction", count.index + 1))}"
    access = "${lookup (var.network_security_rule_parameters, format( "%d-access", count.index + 1))}"
    protocol = "${lookup (var.network_security_rule_parameters, format( "%d-protocol", count.index + 1))}"
    source_port_range = "${lookup (var.network_security_rule_parameters, format( "%d-source_port_range", count.index + 1))}"
    destination_port_range = "${lookup (var.network_security_rule_parameters, format( "%d-destination_port_range", count.index + 1))}"
    source_address_prefix = "${lookup (var.network_security_rule_parameters, format( "%d-source_address_prefix", count.index + 1))}"
    destination_address_prefix = "${lookup (var.network_security_rule_parameters, format( "%d-destination_address_prefix", count.index + 1))}"
    resource_group_name = "${var.resource_group_name}"
    network_security_group_name = "${lookup (var.network_security_rule_parameters, format( "%d-network_security_group_name", count.index + 1))}"
    count = "${var.network_security_rule_count}"
}

