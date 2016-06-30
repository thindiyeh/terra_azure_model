resource "azurerm_storage_account" "storacct" {
    name = "${lookup (var.storage_account_parameters, format( "%d-name", count.index + 1))}"
    resource_group_name = "${var.resource_group_name}"
    location = "${lookup (var.storage_account_parameters, format( "%d-location", count.index + 1))}"
    account_type = "${lookup (var.storage_account_parameters, format( "%d-account_type", count.index + 1))}"
    count = "${var.storage_account_count}"
}
