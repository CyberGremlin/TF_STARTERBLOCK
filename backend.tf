# The backend is used to hold details of the statefile. Locally there are no details, so this file does not need to be altered.
# If using a pipeline, then the azurerm version will be used, but the details will be passed to terraform via the command line so again, this file would
# not need this information

terraform {
  # backend "azurerm" {} # Uncomment this line if running as a pipeline and comment out the local one.
  backend "local" {} # Comment this line out if running as a pipeline, and uncomment the azurerm one.
}