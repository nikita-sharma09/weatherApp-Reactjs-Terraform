terraform {
    backend "azurerm" {
        resource_group_name = "app-rg"
        storage_account_name = "appsa"
        container_name = "tf-state"
        key = "app.tf.state"
    }
}