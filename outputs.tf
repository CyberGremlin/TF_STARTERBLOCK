# Outputs are a way of getting infomation from the plan or apply steps. Outputs will display on the output logs of those two commands.
# So for example you can get a dynamically created resource name or another value that would only be known at deployment time.
# Output can also be passed on to other steps in a pipeline but that will not be covered here.

output "sa_name" {
  value = azurerm_storage_account.example.name
}