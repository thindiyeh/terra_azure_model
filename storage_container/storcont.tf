resource "azurerm_storage_container" "storcont" {
    name = "${lookup (var.storage_container_parameters, format( "%d-name", count.index + 1))}"
    resource_group_name = "${var.resource_group_name}"
    storage_account_name = "${lookup (var.storage_container_parameters, format( "%d-storage_account_name", count.index + 1))}"
    container_access_type = "${lookup (var.storage_container_parameters, format( "%d-container_access_type", count.index + 1))}"
    count = "${var.storage_container_count}"
}
