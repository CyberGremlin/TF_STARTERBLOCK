resource "azurerm_resource_group" "example" {
  name     = var.RG_MEDIA_NAME
  location = var.DEFAULT_LOCATION
}

resource "azurerm_resource_group" "example_digiminster" {
  # provider     = azuread.digiminster # This is an example of using an alias to assign a resource to a different tenant/subscription
  name     = "mydigiminstersa1"
  location = var.DEFAULT_LOCATION
}