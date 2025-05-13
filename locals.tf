# Locals are like variables, but are either constants that require no varying inputs in each run, or they are programatically derived from other values.
# All locals are contained in a locals brace like below

locals {
  MY_LOCAL = "THIS_IS_A_CONSTANT_VALUE" # Example of a constant
  SA_MEDIA_NAME = "samedia${var.DEFAULT_LOCATION}ukw1" # example of inserting a variable into the middle of a string
}