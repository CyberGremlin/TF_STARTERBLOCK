Things to do to prepare:-

1. Install VSCode
2. In VSCode install the following extensions
   - Hashicorp Terraform (published by Hashicorp)
   - Azure Terraform (published by Microsoft)
3. Install AzureCLI if you have not already done so. [https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest&pivots=msi]
4. Install Git if you have not already done so. [https://git-scm.com/downloads/win]
5. Download Terraform [https://developer.hashicorp.com/terraform/install]
6. Extract terraform.exe from the download and either create a path to it, or simply place in your 'C:\windows' folder.
  

###

How to run Terraform

1. Use AzureCLI to log into the correct Azure Subscription
  az login --tenant <tenantid>
  az account set --subscription <subscriptionid>

2. Run Terraform
  terraform fmt # This formats your code - it can be run as many times as you like
  terraform init # This is just for a local run, in a pipeline the init would include other information
  terraform validate # This command validates your code and checks it for syntax errors and internal consistancy
  terraform plan # This command compares your terraform against the existing infrastructure and tells you what will be changed, deleted or added.
  terraform apply # This command deploys your infrastructure commands
  terraform destroy # This command destorys your infrastructure