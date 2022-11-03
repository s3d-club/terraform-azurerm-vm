terraform {
  required_version = ">=1.3.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.29.1"
    }

    external = {
      source  = "hashicorp/external"
      version = ">=2.2.2"
    }

    random = {
      source  = "hashicorp/random"
      version = ">=3.4.3"
    }

    time = {
      source  = "hashicorp/time"
      version = ">=0.9.0"
    }
  }
}
