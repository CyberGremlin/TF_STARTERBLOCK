# Providers refers to the publishers of the resources that terraform will be using. Publishers like Microsoft or Amazon have departments that
# create the programming for terraform to interact with their resources. The 'terraform init' command then downloads these provider's binaries
# for Terraform to use. There are many providers, even beyond cloud providers, such as one to produce a random number, to more complex ones such as for kubernetes. 
# The 'azurerm' one is the only one given as an example here.

terraform { # This block holds all the providers, whose binaries will be downloaded as part of 'terraform init'
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.28.0" # Inserting the binary here ensures there won't be a breaking update when getting the default 'latest' version.
    }
  }
}

provider "azurerm" { # These individual blocks contain login data (not required as you are logging in via AzureCLI) or configuration that applies across the tenancy.

  # Configuration options - normally left blank
  features {

  }
}

# provider "azurerm" {
#   # If you are dealing with multiple subscriptions or tenancies, then you could assign an alias and assign each resource accordingly, not required here.
#   alias           = "digiminster" 
#   subscription_id = "00000000-0000-0000-0000-000000000000"
#   client_id       = "00000000-0000-0000-0000-000000000000"
#   client_secret   = "00000000-0000-0000-0000-000000000000"
#   features {}
# }