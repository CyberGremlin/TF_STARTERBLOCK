# the variables.tf file is traditionally used to home all the variables expected by terraform. A run of terraform will look for inputs
# for all these variables. This will be from a 'terraform.tfvars' file if run locally, or the command line if run via a pipeline. 
# If a value for a variable is not found, then the default value will be used. If a defualt value is not provided, then in the absence of 
# a variable coming from the command line or terraform.tfvars file, then an error will be produced. 

# NOTE traditionally variable names are in UPPERCASE with words separated with underscores. 
# It is best practices to order the variables in alphabetical order, and to separate them into categories, if that would improve readability, using # comments


# ENVIRONMENT - COMMON 
variable "DEFAULT_LOCATION" { # Example variable
  type    = string
  default = "uksouth"
}

# RESOURCES - STORAGE ACCOUNTS
variable "RG_MEDIA_NAME" { # Example variable
  type        = string
  description = "RG for the media application"
}