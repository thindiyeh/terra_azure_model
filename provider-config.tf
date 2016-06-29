provider "azurerm" {
  subscription_id = "${lookup(var.provider, "subscription_id")}"
  client_id       = "${lookup(var.provider, "client_id")}"
  client_secret   = "${lookup(var.provider, "client_secret")}"
  tenant_id       = "${lookup(var.provider, "tenant_id")}"
}
