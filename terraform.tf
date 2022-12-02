terraform {
  required_version = ">=1.3.6"

  required_providers {
    azurerm  = ">=3.33.0"
    external = ">=2.2.3"
    random   = ">=3.4.3"
    time     = ">=0.9.1"
  }
}
